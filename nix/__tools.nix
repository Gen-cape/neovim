{lib, ...}: let
  indent = level: str: lib.concatMapStrings (line: "${lib.replicate level " "}${line}\n") (lib.splitString "\n" str);
  formatList = items:
    if items == []
    then ""
    else "\n${lib.concatStringsSep "\n" items}\n";

  createKeyMap = seq: action: description: mode: ''
    {
      ${lib.strings.escapeNixString seq},
      ${lib.strings.escapeNixString action},
      desc = ${lib.strings.escapeNixString description},
      mode = ${lib.strings.escapeNixString mode},
    }'';

  simpleKeyMap = seq: action: createKeyMap seq action seq "n";

  createDependency = plugin: depSpecs: ''
    deps.add {
      source = ${lib.strings.escapeNixString plugin},
      depends = {
        ${formatList depSpecs}
      },
    }'';

  getPluginName = plugin: let
    baseName = builtins.baseNameOf plugin;
    parts = lib.splitString "." baseName;
  in
    builtins.elemAt parts 0;

  configurePlugin = plugin: {
    # Core configuration
    deps ? [],
    coreDeps ? [],
    eventHook ? null,
    # Hook functions
    beforeHooks ? [],
    afterHooks ? [],
    # UI and behavior
    keys ? [],
    setupHooks ? [],
    customHooks ? [],
    # Special flags
    noSetup ? true,
    # Additional options
    extraConfig ? {},
  }: let
    shortName = builtins.baseNameOf plugin;
    rawName = getPluginName plugin;

    # Organize hooks with proper formatting
    formattedBeforeHooks = formatList (
      [(createDependency plugin coreDeps)]
      ++ deps
      ++ beforeHooks
    );

    formattedKeys =
      if keys == []
      then ""
      else ''
        keys = {${formatList keys}},
      '';

    formattedCustomHooks =
      if customHooks == []
      then ""
      else formatList customHooks;

    # Handle the setup function with proper indentation
    setupFunction =
      if noSetup
      then ""
      else ''
        require(${lib.strings.escapeNixString rawName}).setup {${formatList setupHooks}}
      '';

    # Event hook configuration
    eventConfig =
      if eventHook != null
      then ''event = ${lib.strings.escapeNixString eventHook},''
      else "";

    # Generate afterHooks section with proper formatting
    formattedAfterHooks = formatList (
      (
        if setupFunction != ""
        then [setupFunction]
        else []
      )
      ++ afterHooks
    );

    # Additional configuration options
    extraConfigStr = lib.concatStringsSep ",\n  " (lib.mapAttrsToList (
        name: value:
          if builtins.isString value
          then "${name} = ${lib.strings.escapeNixString value}"
          else if builtins.isBool value
          then "${name} = ${
            if value
            then "true"
            else "false"
          }"
          else "${name} = ${builtins.toString value}"
      )
      extraConfig);
  in ''
    return {
      ${lib.strings.escapeNixString shortName},
      ${
      if extraConfig != {}
      then "${extraConfigStr},"
      else ""
    }
      ${
      if eventConfig != ""
      then "${eventConfig}"
      else ""
    }

      before = function()${formattedBeforeHooks}
      end,
      ${formattedKeys}
      ${formattedCustomHooks}
      after = function()${formattedAfterHooks}
      end,
    }
  '';
in rec {
  # Export helper functions
  inherit createKeyMap simpleKeyMap createDependency;

  # Main plugin configuration functions with preset configurations
  lazyPlugin = configurePlugin;

  # Common plugin configurations
  lazyOnStart = plugin: opts: configurePlugin plugin (opts // {eventHook = "VimEnter";});
  lazyNoSetup = plugin: opts: configurePlugin plugin (opts // {noSetup = true;});
  lazyOnEvent = plugin: event: opts: configurePlugin plugin (opts // {eventHook = event;});

  # Shorthand functions for common scenarios
  lazySimple = plugin: configurePlugin plugin {};
  lazyOnStartSimple = plugin: lazyOnStart plugin {};
  lazyNoSetupSimple = plugin: lazyNoSetup plugin {};

  # Function to apply multiple configurations
  withOptions = plugin: optionsList:
    configurePlugin plugin (lib.foldl' (acc: opt: acc // opt) {} optionsList);

  # Example usage:
  # lazyOnStart "ThePrimeagen/vim-be-good" {
  #   keys = [
  #     (simpleKeyMap "<leader>ov" "<cmd>VimBeGood<cr>")
  #   ];
  #   noSetup = true;
  # }
  #
  # Or using composition:
  # withOptions "ThePrimeagen/vim-be-good" [
  #   { keys = [(simpleKeyMap "<leader>ov" "<cmd>VimBeGood<cr>")] }
  #   { eventHook = "VimEnter" }
  #   { noSetup = true }
  # ]
}

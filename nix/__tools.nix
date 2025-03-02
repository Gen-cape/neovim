{lib, ...}: let
  addDep = plugin: deps: "deps.add {\n source = '${plugin}',\n depends = {\n${parseHook deps}},\n }";
  addKey = seq: act: desc: mode: "{ '${seq}', '${act}', desc = '${desc}', mode = '${mode}' },";
  addKey' = seq: act: addKey seq act seq "n";
  parseHook = builtins.foldl' (acc: next: acc + next + "\n") "";
in rec {
  inherit addDep addKey addKey';
  baseLazy = plugin: {
    deps ? [],
    keys ? [],
    beforeHooks ? [],
    coreDeps ? [],
    afterHooks ? [],
    setupHooks ? [],
    eventHook ? "",
    customHooks ? "",
    noSetup ? false,
  }: let
    shortName = builtins.baseNameOf plugin;
    rawName = builtins.elemAt (lib.splitString "." (baseNameOf plugin)) 0;
  in ''
    return {
      '${shortName}',
      before = function()
        ${addDep plugin coreDeps}
        ${parseHook deps}
        ${parseHook beforeHooks}
      end,
      keys = {
        ${parseHook keys}
      },
      ${
      if eventHook != ""
      then "event = '${eventHook}',"
      else ""
    }
      ${
      if customHooks != ""
      then parseHook customHooks
      else ""
    }

      after = function()
      ${
      if noSetup == true
      then ""
      else ''
        require('${rawName}').setup {
          ${parseHook setupHooks}
        }
      ''
    }
        ${parseHook afterHooks}
      end,
    }
  '';
  Lazy' = plugin: baseLazy plugin {eventHook = "VimEnter";};
  LazyI = plugin:
    baseLazy plugin {
      eventHook = "VimEnter";
      noSetup = true;
    };
  # Recursive extender function
  onStart = spec: (spec // {eventHook = "VimEnter";});
  noSetup = spec: (spec // {noSetup = true;});

  # EXAMPLE:
  # baseLazy "ThePrimeagen/vim-be-good" {
  #   eventHook = "VimEnter";
  #   keys = [
  #     (addKey' "<leader>ov" "<cmd>VimBeGood<cr>")
  #   ];
  #   noSetup = true;
  # }
  # Lazy' "ThePrimeagen/vim-be-good"
}

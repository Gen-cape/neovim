{
  lib,
  wrapNeovimUnstable,
  neovim-unwrapped,
  neovimUtils,
  writeShellScript,
  lua5_1,
  luarocks,
  clang,
  pkg-config,
  cargo,
  statix,
  manix,
  nixd,
  tinymist,
  alejandra,
  nodejs,
  buildFHSEnv,
  bundled ? true,
  selfPath,
  pluginsStored,
  chafa,
  ...
}: let
  devTools = [
    lua5_1
    luarocks
    clang
    pkg-config
    cargo
    nodejs
  ];

  languageTools = [
    statix
    manix
    nixd
    alejandra
    tinymist
    chafa
  ];
  extraPackages = devTools ++ languageTools;

  runtimeConfig =
    if bundled
    then ''
      set runtimepath^=${pluginsStored}
      source ${selfPath}/init.lua
    ''
    else ''
      set runtimepath^=~/.nvim
      set runtimepath-=~/.config/nvim
      source ~/.nvim/init.lua
    '';

  neovimConfig =
    neovimUtils.makeNeovimConfig {
      withPython3 = false;
      withRuby = false;
      withNodeJs = false;
      extraLuaPackages = p: with p; [magick];
      inherit extraPackages;
      customRC = runtimeConfig;
    }
    // {
      wrapperArgs = [
        "--prefix"
        "PATH"
        ":"
        "${lib.makeBinPath extraPackages}"
      ];
    };

  nvim = wrapNeovimUnstable neovim-unwrapped neovimConfig;
in
  buildFHSEnv {
    name = "nvim";
    targetPkgs = _: [nvim];
    runScript = writeShellScript "nvim-fhs.sh" ''
      exec ${nvim}/bin/nvim "$@"
    '';
  }

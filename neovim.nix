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
}: let
  nvim = let
    config = let
      extraPackages = [
        lua5_1
        luarocks
        clang
        pkg-config
        cargo
        nodejs

        # LSP
        statix
        manix
        nixd
        alejandra
        tinymist
        chafa
      ];
    in
      neovimUtils.makeNeovimConfig
      {
        withPython3 = false;
        withRuby = false;
        withNodeJs = false;

        extraLuaPackages = p:
          with p; [
            magick
          ];

        inherit extraPackages;
        #
        # customRC =
        #   if bundled
        #   then ''
        #     set runtimepath^=${selfPath}
        #     source ${selfPath}/init.lua
        #   ''
        #   else ''
        #     set runtimepath^=~/.nvim
        #     set runtimepath-=~/.config/nvim
        #     source ~/.nvim/init.lua
        #   '';
        customRC =
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
      }
      // {
        wrapperArgs = [
          "--prefix"
          "PATH"
          ":"
          "${lib.makeBinPath extraPackages}"
        ];
      };
  in
    wrapNeovimUnstable neovim-unwrapped config;
in
  buildFHSEnv {
    name = "nvim";
    targetPkgs = pkgs: [
      nvim
    ];

    runScript = writeShellScript "nvim-fhs.sh" ''
      exec ${nvim}/bin/nvim "$@"
    '';
  }

{
  inputs,
  self,
  ...
}: let
  selfPath = builtins.unsafeDiscardStringContext "${inputs.self}";
  vimPackage = ./p_neovim.nix;
in {
  imports = [
    ./devshells.nix
  ];
  perSystem = {pkgs, ...}: let
    call = path: args: pkgs.callPackage path (args // {inherit selfPath;} // {inherit self;});
    pluginsStored = call ./p_symlinkCompile.nix {inherit selfPath;};
  in {
    packages = rec {
      pluginsMerged = pluginsStored;
      neovim = call vimPackage {
        bundled = false;
        inherit pluginsStored;
      };
      neovim-bundled = call vimPackage {inherit pluginsStored;};
      default = neovim-bundled;
    };
  };

  flake = {
    overlays.default = final: prev: let
      call = path: args: final.callPackage path (args // {inherit selfPath;});
      pluginsStored = call ./p_symlinkCompile.nix {inherit selfPath;};
    in {
      neovim = call vimPackage {
        bundled = false;
        inherit pluginsStored;
      };
      neovim-bundled = call vimPackage {inherit pluginsStored;};
    };
    tools = import "${selfPath}/nix/__tools.nix" {inherit (inputs.nixpkgs) lib;};
  };
}

{inputs, ...}: {
  imports = [
    ./devshells.nix
  ];
  perSystem = {pkgs, ...}: let
    call = pkgs.callPackage;
    vimPackage = ./p_neovim.nix;
  in rec {
    neovim = call vimPackage {bundled = false;};
    neovim-bundled = call vimPackage {pluginsStored = pkgs.callPackage ./p_symlinkCompile.nix {};};
    default = neovim-bundled;
  };

  flake = let
    vimPackage = ./p_neovim.nix;
    selfPath = builtins.unsafeDiscardStringContext "${inputs.self}";
  in {
    overlays.default = final: prev: {
      neovim = final.callPackage vimPackage {bundled = false;};
      neovim-bundled = final.callPackage vimPackage {pluginsStored = final.callPackage ./p_symlinkCompile.nix {};};
    };
    tools = import "${selfPath}/nix/__tools.nix" {inherit (inputs.nixpkgs) lib;};
  };
}

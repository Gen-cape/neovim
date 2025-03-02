{
  description = "Self contained neovim config";

  outputs = inputs: let
    inherit (inputs) self;
    vimPackage = ./neovim.nix;
    selfPath = builtins.unsafeDiscardStringContext "${self}";
    additions = {inherit selfPath;};
  in
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];

      perSystem = {pkgs, ...}: let
        call = pkg: args: pkgs.callPackage pkg (args // {inherit selfPath;});
        nixAdditions' = pkgs.lib.filesystem.listFilesRecursive "${selfPath}/nix";
        luaAdditions' = pkgs.lib.filesystem.listFilesRecursive "${selfPath}/lua";
        luaAdditionsPlugins =
          pkgs.lib.filter (
            f:
              (pkgs.lib.hasSuffix ".lua" f)
              && (pkgs.lib.hasInfix "plugins" f)
              && (!pkgs.lib.hasInfix "__" f)
          )
          luaAdditions';
        luaAdditions =
          pkgs.lib.filter (
            f:
              (pkgs.lib.hasSuffix ".lua" f)
              && !(pkgs.lib.hasInfix "plugins" f)
              && (!pkgs.lib.hasInfix "__" f)
          )
          luaAdditions';
        nixAdditions =
          pkgs.lib.filter (
            f:
              (pkgs.lib.hasSuffix ".nix" f)
              && (!pkgs.lib.hasSuffix "default.nix" f)
              && (!pkgs.lib.hasInfix "__" f)
          )
          nixAdditions';
      in {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            alejandra
            stylua
            (writeShellScriptBin "bd" ''
              nix build .#default --no-substitute --out-link nvim
            '')
            (writeShellScriptBin "rn" ''
              nix run --no-substitute
            '')
            (writeShellScriptBin "all" ''
              nix build .#default --no-substitute --out-link nvim
              nix build .#pluginsMerged --no-substitute --out-link plugins
            '')
          ];
        };
        packages = rec {
          pluginsMerged = call "${selfPath}/nix" {
            inherit nixAdditions luaAdditions luaAdditionsPlugins;
            tools = pkgs.callPackage "${selfPath}/nix/__tools.nix" {};
          };
          neovim = call vimPackage {bundled = false;};
          neovim-bundled = call vimPackage {pluginsStored = pluginsMerged;};
          default = neovim-bundled;
        };
      };

      flake = let
        inherit (inputs.nixpkgs) lib;
      in {
        overlays.default = final: prev: {
          neovim = final.callPackage vimPackage ({bundled = false;} // additions);
          neovim-bundled = final.callPackage vimPackage additions;
        };
        tools = import "${selfPath}/nix/__tools.nix" {inherit lib;};
      };
    };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # nixpkgs.url = "github:nixos/nixpkgs?rev=a225c7d3073fb5bdef090a1b7986d18a8d557b1a";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };
}

{...}: {
  perSystem = {pkgs, ...}: let
    mkScript = name: script: pkgs.writeShellScriptBin name script;
    buildScripts = {
      bd = "nix build .#default --no-substitute --out-link nvim";
      rn = "nix run --no-substitute";
      all = ''
        nix build .#default --no-substitute --out-link nvim
        nix build .#pluginsMerged --no-substitute --out-link plugins
      '';
    };
  in {
    devShells.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs;
        [
          alejandra
          stylua
        ]
        ++ (pkgs.lib.mapAttrsToList mkScript buildScripts);
    };
  };
}

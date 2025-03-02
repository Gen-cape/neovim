{
  symlinkJoin,
  lib,
  writeTextDir,
  self,
  pkgs,
}: let
  tools = pkgs.callPackage "${selfPath}/nix/__tools.nix" {};
  selfPath = builtins.unsafeDiscardStringContext "${self}";
  filterFiles = predicate: dir:
    pkgs.lib.filter predicate (pkgs.lib.filesystem.listFilesRecursive "${selfPath}/${dir}");

  defaultParseRule = f: (!pkgs.lib.hasInfix "__" f);

  isLuaFile = f: pkgs.lib.hasSuffix ".lua" f && defaultParseRule f;
  isNixFile = f: pkgs.lib.hasSuffix ".nix" f && defaultParseRule f && (!pkgs.lib.hasSuffix "default.nix" f);

  luaAdditions = filterFiles (f: isLuaFile f && !(pkgs.lib.hasInfix "plugins" f)) "lua";
  luaAdditionsPlugins = filterFiles (f: isLuaFile f && (pkgs.lib.hasInfix "plugins" f)) "lua";
  nixAdditions = filterFiles isNixFile "nix";

  # Helper function to extract the base name without extension
  rawName = path: builtins.elemAt (lib.splitString "." (baseNameOf path)) 0;

  # Helper function to create a Lua file in the correct location
  mkLuaFile = targetDir: path: content:
    writeTextDir "${targetDir}/${rawName path}.lua" content;

  # Process Nix additions - compile and place in /lua/plugins/
  nixFiles = let
    call = lib.callPackageWith ({inherit lib;} // tools);
  in
    map (f: mkLuaFile "/lua/plugins" f (call f {})) nixAdditions;

  luaPluginFiles = map (f: mkLuaFile "/lua/plugins" f (builtins.readFile f)) luaAdditionsPlugins; # Process Lua plugin files - copy to /lua/plugins/

  luaFiles = map (f: mkLuaFile "/lua" f (builtins.readFile f)) luaAdditions; # Process Lua files - copy to /lua/
in
  symlinkJoin {
    name = "nixNeovimAdditions";
    paths = nixFiles ++ luaPluginFiles ++ luaFiles;
  }

{
  symlinkJoin,
  lib,
  writeTextDir,
  selfPath,
  nixAdditions,
  luaAdditions,
  luaAdditionsPlugins,
  tools,
}: let
  rawName = path: builtins.elemAt (lib.splitString "." (baseNameOf path)) 0;
  additions = let
    call = lib.callPackageWith ({inherit lib;} // tools);
  in
    map (f: writeTextDir "/lua/plugins/${rawName f}.lua" (call f {})) nixAdditions;

  origLuaPlugins =
    map (f: writeTextDir "/lua/plugins/${rawName f}.lua" (builtins.readFile f)) luaAdditionsPlugins;

  origLua =
    map (f: writeTextDir "/lua/${rawName f}.lua" (builtins.readFile f)) luaAdditions;

  foldPlugins = builtins.foldl' (
    acc: next:
      acc
      ++ [
        next
      ]
      ++ (foldPlugins (next.dependencies or []))
  ) [];
  # startPluginsWithDeps = lib.unique (foldPlugins startPlugins);
in
  symlinkJoin {
    name = "nixNeovimAdditions";
    paths = [
      additions
      origLua
      origLuaPlugins
    ];
  }

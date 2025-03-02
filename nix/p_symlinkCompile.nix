{
  symlinkJoin,
  lib,
  writeTextDir,
  selfPath,
  pkgs,
}: let
  tools = pkgs.callPackage "${selfPath}/nix/__tools.nix" {};
  # selfPath = builtins.unsafeDiscardStringContext "${self}";

  # Improved file filtering
  files = {
    # Helper functions
    isValid = path: !lib.hasInfix "__" path;
    isLua = path: lib.hasSuffix ".lua" path && files.isValid path;
    isNix = path: lib.hasSuffix ".nix" path && files.isValid path && !lib.hasSuffix "default.nix" path && lib.hasInfix "parse" path;

    # Path filtering
    fromDir = predicate: dir:
      lib.filter predicate (lib.filesystem.listFilesRecursive "${selfPath}/${dir}");

    # Categorized files
    lua = {
      core = files.fromDir (f: files.isLua f && !lib.hasInfix "plugins" f) "lua";
      plugins = files.fromDir (f: files.isLua f && lib.hasInfix "plugins" f) "lua";
    };
    nix = files.fromDir files.isNix "nix";
  };

  # File processing functions
  process = {
    # Extract filename without extension
    baseName = path: builtins.elemAt (lib.splitString "." (baseNameOf path)) 0;

    # Create a Lua file at the specified path
    mkLuaFile = targetDir: path: content:
      writeTextDir "${targetDir}/${process.baseName path}.lua" content;

    # Convert Nix value to Lua-compatible string representation
    valueToLuaString = value:
      if builtins.isString value
      then "[[${value}]]"
      else if builtins.isInt value || builtins.isFloat value
      then toString value
      else if builtins.isBool value
      then
        if value
        then "true"
        else "false"
      else if value == null
      then "nil"
      # Skip functions entirely
      else if builtins.isFunction value
      then "nil -- function value was here, cannot be serialized"
      else if builtins.isList value
      then "{ ${lib.concatMapStringsSep ", " process.valueToLuaString value} }"
      else if builtins.isAttrs value
      then let
        # Filter out non-serializable values
        attrs = lib.filterAttrs (n: v: !(builtins.isFunction v)) value;
        attrToLua = name: val: "${name} = ${process.valueToLuaString val}";
      in "{ ${lib.concatStringsSep ", " (lib.mapAttrsToList attrToLua attrs)} }"
      else "nil -- unserializable value";

    # Handle different return types from Nix modules
    nixToLua = path: let
      nixModule = lib.callPackageWith ({inherit lib;} // tools) path {};

      # Handle different return types
      processNixOutput = output:
        if builtins.isString output
        then
          # String case (single lua snippet)
          output
        else if builtins.isList output
        then
          # List case (multiple lua snippets or plugin specs)
          ''
            -- Generated from ${baseNameOf path}
            return {
              ${lib.concatMapStringsSep ",\n  " (
                item:
                  if builtins.isString item
                  then item
                  else process.valueToLuaString item
              )
              output}
            }
          ''
        else if builtins.isAttrs output
        then
          # Attrset case (plugin specs)
          ''
            -- Generated from ${baseNameOf path}
            return ${process.valueToLuaString output}
          ''
        else if builtins.isFunction output
        then
          # Function case - this should be rare but we'll handle it
          ''
            -- Generated from ${baseNameOf path}
            -- Warning: Original Nix output was a function which cannot be serialized
            return {}
          ''
        else builtins.throw "Unsupported return type from ${path}";
    in
      processNixOutput nixModule;
  };

  # Generate output files
  output = {
    nixPlugins = map (f: process.mkLuaFile "/lua/plugins" f (process.nixToLua f)) files.nix;
    luaPlugins = map (f: process.mkLuaFile "/lua/plugins" f (builtins.readFile f)) files.lua.plugins;
    luaCore = map (f: process.mkLuaFile "/lua" f (builtins.readFile f)) files.lua.core;
  };
in
  symlinkJoin {
    name = "nixNeovimAdditions";
    paths = output.nixPlugins ++ output.luaPlugins ++ output.luaCore;
  }

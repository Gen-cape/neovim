{
  symlinkJoin,
  lib,
  writeTextDir,
  selfPath,
  pkgs,
  self,
}: let
  tools = pkgs.callPackage "${selfPath}/nix/__tools.nix" {};

  # Helper functions for file filtering
  files = {
    isValid = path: !lib.hasInfix "__" path;
    isLua = path: lib.hasSuffix ".lua" path && files.isValid path;
    isNix = path: lib.hasSuffix ".nix" path && files.isValid path && !lib.hasSuffix "default.nix" path;
    fromDir = predicate: dir:
      lib.filter predicate (lib.filesystem.listFilesRecursive "${selfPath}/${dir}");
  };

  # Processing helpers
  process = {
    baseName = path: builtins.elemAt (lib.splitString "." (baseNameOf path)) 0;

    mkLuaFile = targetDir: path: content:
      writeTextDir "${targetDir}/${process.baseName path}.lua" content;

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
      else if builtins.isFunction value
      then "nil -- function value was here, cannot be serialized"
      else if builtins.isList value
      then "{ ${lib.concatMapStringsSep ", " process.valueToLuaString value} }"
      else if builtins.isAttrs value
      then let
        attrs = lib.filterAttrs (n: v: !(builtins.isFunction v)) value;
        attrToLua = name: val: "${name} = ${process.valueToLuaString val}";
      in "{ ${lib.concatStringsSep ", " (lib.mapAttrsToList attrToLua attrs)} }"
      else "nil -- unserializable value";

    nixToLua = path: let
      nixModule = lib.callPackageWith ({inherit lib;} // tools // {inherit self pkgs;}) path {};
      processNixOutput = output:
        if builtins.isString output
        then output
        else if builtins.isList output
        then ''
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
        then ''
          -- Generated from ${baseNameOf path}
          return ${process.valueToLuaString output}
        ''
        else if builtins.isFunction output
        then ''
          -- Generated from ${baseNameOf path}
          -- Warning: Original Nix output was a function which cannot be serialized
          return {}
        ''
        else builtins.throw "Unsupported return type from ${path}";
    in
      processNixOutput nixModule;
  };

  # Modular symlink compile function
  symlinkCompileModular = {
    rules,
    name ? "nixNeovimAdditions",
  }: let
    # For each rule, discover files, process, and collect outputs
    outputs = lib.flatten (lib.map (
        rule: let
          discovered = files.fromDir rule.filter rule.dir;
        in
          lib.map (f: rule.process f rule.outputDir) discovered
      )
      rules);
  in
    symlinkJoin {
      inherit name;
      paths = outputs;
    };

  # Default rules for backward compatibility
  defaultRules = [
    {
      filter = path: files.isLua path && ! (lib.hasInfix "plugins" path);
      dir = "lua";
      process = path: outputDir: process.mkLuaFile outputDir path (builtins.readFile path);
      outputDir = "/lua";
    }
    {
      filter = path: files.isLua path && lib.hasInfix "plugins" path;
      dir = "lua";
      process = path: outputDir: process.mkLuaFile outputDir path (builtins.readFile path);
      outputDir = "/lua/plugins";
    }
    {
      filter = path: files.isNix path && lib.hasInfix "plugins" path;
      dir = "nix";
      process = path: outputDir: process.mkLuaFile outputDir path (process.nixToLua path);
      outputDir = "/lua/plugins";
    }
    {
      filter = path: files.isNix path && lib.hasInfix "root" path;
      dir = "nix";
      process = path: outputDir: process.mkLuaFile outputDir path (process.nixToLua path);
      outputDir = "/lua";
    }
  ];
in
  # Backward-compatible default export
  symlinkCompileModular {rules = defaultRules;}

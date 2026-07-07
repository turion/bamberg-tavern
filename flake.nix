{
  description = "Bamberg Tavern booking app";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
  };

  outputs = inputs@{ flake-parts, haskell-flake, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-darwin" ];
      imports = [ haskell-flake.flakeModule ];

      perSystem = { pkgs, ... }: {
        haskellProjects.default = {
          basePackages = pkgs.haskell.packages.ghc912;
          projectRoot = ./.;
          autoWire = [ "packages" "apps" "checks" "devShells" ];
          defaults.enable = true;
          devShell.hlsCheck.enable = true;
        };
      };
    };
}

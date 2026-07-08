{
  description = "Bamberg Tavern booking app";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
    pico = {
      url = "github:picocss/pico/v2.1.1";
      flake = false;
    };
  };

  outputs = inputs@{ flake-parts, haskell-flake, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-darwin" ];
      imports = [ haskell-flake.flakeModule ];

      perSystem = { pkgs, ... }:
        let
          # EB Garamond variable fonts from google/fonts (SIL OFL 1.1).
          # Pinned by commit for reproducibility.
          ebGaramondRev = "f8c1d3d6cc75e30d77130bdcbfbff27e3b6233fe";
          ebGaramondRegular = pkgs.fetchurl {
            url = "https://raw.githubusercontent.com/google/fonts/${ebGaramondRev}/ofl/ebgaramond/EBGaramond%5Bwght%5D.ttf";
            name = "EBGaramond-wght.ttf";
            hash = "sha256-75US+S9tV55dx1r1mlpLG4tH0u2ongC5VNRFIOU2kCc=";
          };
          ebGaramondItalic = pkgs.fetchurl {
            url = "https://raw.githubusercontent.com/google/fonts/${ebGaramondRev}/ofl/ebgaramond/EBGaramond-Italic%5Bwght%5D.ttf";
            name = "EBGaramond-Italic-wght.ttf";
            hash = "sha256-u6LESZyTyWErkLmCXTKwfaUvzi/ldWKh62uDNVP5PE4=";
          };
          ebGaramondOfl = pkgs.fetchurl {
            url = "https://raw.githubusercontent.com/google/fonts/${ebGaramondRev}/ofl/ebgaramond/OFL.txt";
            hash = "sha256-CYUGZmLrdV7TaDrlSCqBqRlbSc4/fhZcwjiLPb7Ofdc=";
          };

          # Wrapper around @playwright/mcp that uses nixpkgs' chromium,
          # side-stepping Playwright's own browser-revision bookkeeping.
          # --no-sandbox: the Chromium suid sandbox helper isn't available on
          # non-NixOS hosts running from the Nix store.
          playwrightMcp = pkgs.writeShellScriptBin "playwright-mcp" ''
            exec ${pkgs.nodejs}/bin/npx -y @playwright/mcp@latest \
              --executable-path ${pkgs.chromium}/bin/chromium \
              --no-sandbox \
              "$@"
          '';

          # `dev-run` boots the app with a live theme/ directory so edits to
          # CSS/SVG show up on server restart without a Nix rebuild.
          # Fonts + Pico come from the immutable static-assets derivation.
          devRun = pkgs.writeShellScriptBin "dev-run" ''
            set -euo pipefail
            projectRoot=$(git rev-parse --show-toplevel 2>/dev/null || pwd)
            devDir="$projectRoot/.static-dev"
            rm -rf "$devDir"
            mkdir -p "$devDir/fonts"
            # Symlink to live sources so edits are picked up on server restart:
            ln -s "$projectRoot/theme/theme.css"   "$devDir/theme.css"
            ln -s "$projectRoot/theme/noise.svg"   "$devDir/noise.svg"
            ln -s "$projectRoot/theme/flag-en.svg" "$devDir/flag-en.svg"
            ln -s "$projectRoot/theme/flag-de.svg" "$devDir/flag-de.svg"
            # Immutable assets from Nix:
            ln -s ${staticAssets}/pico.min.css              "$devDir/pico.min.css"
            ln -s ${staticAssets}/fonts/EBGaramond.woff2        "$devDir/fonts/EBGaramond.woff2"
            ln -s ${staticAssets}/fonts/EBGaramond-Italic.woff2 "$devDir/fonts/EBGaramond-Italic.woff2"
            ln -s ${staticAssets}/fonts/OFL.txt                 "$devDir/fonts/OFL.txt"
            BAMBERG_STATIC_DIR="$devDir" exec cabal run bamberg-tavern -- "$@"
          '';

          staticAssets = pkgs.runCommand "bamberg-tavern-static" {
            nativeBuildInputs = [ pkgs.woff2 ];
          } ''
            mkdir -p $out $out/fonts
            cp ${inputs.pico}/css/pico.classless.min.css $out/pico.min.css
            cp ${./theme/theme.css} $out/theme.css
            cp ${./theme/noise.svg} $out/noise.svg
            cp ${./theme/flag-en.svg} $out/flag-en.svg
            cp ${./theme/flag-de.svg} $out/flag-de.svg
            cp ${ebGaramondOfl} $out/fonts/OFL.txt

            cp ${ebGaramondRegular} EBGaramond.ttf
            cp ${ebGaramondItalic} EBGaramond-Italic.ttf
            woff2_compress EBGaramond.ttf
            woff2_compress EBGaramond-Italic.ttf
            mv EBGaramond.woff2 $out/fonts/EBGaramond.woff2
            mv EBGaramond-Italic.woff2 $out/fonts/EBGaramond-Italic.woff2
          '';
        in
        {
          packages.static-assets = staticAssets;

          haskellProjects.default = {
            basePackages = pkgs.haskell.packages.ghc912;
            projectRoot = ./.;
            autoWire = [ "packages" "apps" "checks" "devShells" ];
            defaults.enable = true;
            devShell.hlsCheck.enable = true;
            devShell.mkShellArgs = {
              buildInputs = (with pkgs; [ nodejs woff2 ]) ++ [ playwrightMcp devRun ];
              shellHook = ''
                export BAMBERG_STATIC_DIR=${staticAssets}
                export PLAYWRIGHT_BROWSERS_PATH=${pkgs.playwright-driver.browsers}
                export PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1
                export PLAYWRIGHT_NODEJS_PATH=${pkgs.nodejs}/bin/node
              '';
            };
          };
        };
    };
}

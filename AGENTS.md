# AGENTS.md

Guidance for AI coding agents (Claude Code and similar) working in this repo.

## Repository conventions

- **Nix dev shell**: everything runs through `nix develop` (auto-entered via direnv + `.envrc: use flake`). The shell exports `BAMBERG_STATIC_DIR`, `PLAYWRIGHT_BROWSERS_PATH`, and adds `nodejs` + `woff2` to PATH.
- **`nix flake check` requires network** (haskell-flake's `hls-check` fetches from hackage). Run it with `--option sandbox false`.

## Frontend architecture

- Server-side rendered HTML via Servant + Lucid. **No JS build step. No framework.**
- Views live in [src/Tavern/View.hs](src/Tavern/View.hs). Routing and handlers in [app/Main.hs](app/Main.hs).
- Styling: [Pico.css](https://picocss.com) v2 (classless variant) + our theme in [theme/theme.css](theme/theme.css). Font: EB Garamond (variable, self-hosted WOFF2). Historical Bamberg palette (parchment, sepia, ecclesiastical red, dark gold).
- Static assets are built by the `static-assets` Nix derivation in [flake.nix](flake.nix) and served under `/static` by `serveDirectoryWebApp`. Nothing in `static/` is checked in.

## Adding a new page or changing a view

1. Edit [src/Tavern/View.hs](src/Tavern/View.hs). Use semantic HTML elements — Pico's classless variant styles them automatically. If you need a container, `<article>` gives you a card.
2. If you need new routes, add them to `type API` in [app/Main.hs](app/Main.hs).
3. Restart the server. Two modes:
   - **`dev-run`** (recommended for iteration): boots cabal with `BAMBERG_STATIC_DIR` pointed at `.static-dev/`, a symlink farm of the live `theme/` sources + immutable font/Pico assets from Nix. Edits to `theme/*.css` and `theme/*.svg` are picked up on server restart — no Nix rebuild needed.
   - **`cabal run bamberg-tavern`**: uses the shellHook-provided `BAMBERG_STATIC_DIR`, which is the fully-built `static-assets` derivation. Theme edits require `nix build .#static-assets` and re-entering the shell (direnv reload).

## Visual iteration workflow (Playwright MCP)

The [.mcp.json](.mcp.json) at the repo root registers `@playwright/mcp` via `npx`. Claude Code launches it automatically on first tool call. Browsers come from Nix (`PLAYWRIGHT_BROWSERS_PATH` set by the dev shell) — no `npx playwright install` needed.

Typical loop:

1. Start the server in background: `cabal run bamberg-tavern`.
2. Navigate Playwright to `/`, `/en`, `/de`, `/admin`.
3. `browser_take_screenshot` each page — save to `.screenshots/` (gitignored).
4. Inspect the screenshots. Adjust `theme/theme.css` or `Tavern.View`.
5. If you changed `theme/*`: rebuild static assets and reload the shell (see above). Otherwise just restart cabal.

Cross-browser: Playwright MCP supports `chromium`, `firefox`, `webkit`. Rerun the same steps with `--browser firefox` / `--browser webkit` to catch rendering differences.

## When adding new dev-env dependencies

Editing [flake.nix](flake.nix) to add a tool or env var **requires the user to reload their editor / direnv session** so the new shell is picked up. Tell the user explicitly.

## Non-goals

- No JS frameworks. No htmx (yet — revisit if slot availability needs live updates).
- No inline styles in Lucid — put everything in `theme/theme.css`.
- No CDN fetches at runtime. Fonts and CSS are self-hosted.
- No Haskell Playwright/Selenium binding. Playwright runs out-of-process via MCP.

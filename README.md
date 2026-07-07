# bamberg-tavern

_We want to enable people to immerse themselves in historical Bamberg._

Servant-based web app where English and German speaking tourists can book tavern role-play slots in Bamberg. A Bamberg-themed pen & paper role-playing game set in the early 17th century. The rules are designed to be fast, light, and invisible — so that players spend their time _being_ their characters in 1620s Bamberg, not wrestling with mechanics.

## Adventures

- Queen Kunigunde
- Burning of Witches
- Gardeners

## Run locally

```bash
cabal run bamberg-tavern
```

Then open:

- `http://localhost:8080/en`
- `http://localhost:8080/de`
- `http://localhost:8080/admin`

Admins can add slots at `/admin`; visitors can book those slots from `/en` or `/de`.

## Infrastructure

- Nix flakes + haskell-flake (flake-parts based)
- CI with `nix flake check`
- NixOS module for self-hosted deployment (`nixosModules.default`)
- Optional Cachix integration via `CACHIX_AUTH_TOKEN`

## Future work

- Payment provider integration (kept as future work in the servant ecosystem)
- Serve adventure PDFs from the web app

## Guides

The adventures are documented as pen & paper guides, written in [Typst](https://typst.app/).

### Project Structure

```
books/
  common/          Shared Typst template and assets
  player/
    en/            Player's Guide (English)
    de/            Spielerhandbuch (Deutsch)
  gm/
    en/            Game Master's Guide (English)
    de/            Spielleiterhandbuch (Deutsch)
scenes/            Example theatre-style play scenes
```

### Technology

- **Typesetting:** [Typst](https://typst.app/) — modern, fast, and expressive
- **Fonts:** EB Garamond (body) and Libertinus Serif (headings) — evoking the early modern period

### Central Motto

> _We want to enable people to immerse themselves in historical Bamberg._

This is the guiding motive behind every design decision. The rules exist to serve immersion — they are fast to resolve, light on bookkeeping, and designed to never interrupt the flow of the story.

### Coherence Invariants

The following invariants **must** be maintained at all times:

1. **Player ↔ Game Master coherence:** Every rule in the Player's Guide must appear (with additional detail) in the Game Master's Guide. The GM guide is a strict superset — it never contradicts the player guide.

2. **English ↔ German coherence:** The English and German versions of each book must contain *exactly the same content*. Structure, examples, and rules are identical; only the language differs. Changes to one language must be mirrored in the other.

3. **Scenes ↔ Rules adherence:** Every example scene must adhere to the rules as written. If a rule changes, affected scenes must be updated. Scenes must not invent or contradict mechanics.

4. **Rule coverage:** Each rule must be covered by at least one example scene. The coverage table at the end of the scenes document tracks this.

### Workflow

1. **Rules first:** Design or change rules in the GM book (English), then propagate:
   - GM English → GM German (translate)
   - GM English → Player English (simplify, remove GM-only content)
   - Player English → Player German (translate)

2. **Scenes second:** After rules are stable, write or update scenes to demonstrate them. Verify coverage.

3. **Build & verify:** Run `nix build` locally or let CI build PDFs. Review output.

### Adding a New Rule

1. Add the rule (with corner cases and examples) to `books/gm/en/main.typ`
2. Translate to `books/gm/de/main.typ`
3. Add the player-facing version to `books/player/en/main.typ`
4. Translate to `books/player/de/main.typ`
5. Write at least one scene in `scenes/main.typ` demonstrating the rule
6. Update the rule coverage table in the scenes document
7. Commit and verify CI passes

### Assets

The Zweidler Plan of Bamberg (1602) is included directly in the repository.

Source: [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:1602_Zweidler_Vogelschauplan_von_Bamberg_Historisches_Museum_Bamberg_anagoria.jpg) (Public Domain)

### Building

#### Prerequisites

- [Nix](https://nixos.org/download.html) with flakes enabled

#### Build all PDFs

```bash
nix build .#all-pdfs

# PDFs are in ./result/
ls result/*.pdf
```

Individual books can also be built separately:

```bash
nix build .#player-book-en
nix build .#player-book-de
nix build .#gm-book-en
nix build .#gm-book-de
nix build .#scenes
```

#### Build the web app

```bash
nix build .#bamberg-tavern
```

#### Deploy on NixOS

Add the flake as an input and import the module in your NixOS configuration:

```nix
# flake.nix
inputs.bamberg-tavern.url = "github:turion/bamberg-tavern";

# configuration.nix (or any imported module)
{ inputs, config, ... }: {
  imports = [ inputs.bamberg-tavern.nixosModules.default ];

  services.bamberg-tavern = {
    enable = true;
    port = 8080;
    pdfDir = inputs.bamberg-tavern.packages.x86_64-linux.all-pdfs;
  };

  # Reverse proxy via nginx:
  services.nginx.virtualHosts."taverne.example.com" = {
    locations."/".proxyPass = "http://127.0.0.1:${toString config.services.bamberg-tavern.port}";
  };
}
```

The service runs as a dynamic user and restarts on failure. The `PORT` and `PDF_DIR` environment variables can also be set manually if running the binary directly.

#### Development shell

```bash
nix develop
# Now you have typst and fonts available
typst compile --root . books/player/en/main.typ
```

## License

Content © the authors. The Zweidler Plan image is in the public domain.

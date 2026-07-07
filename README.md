# bamberg-tavern

Servant-based web app where English and German speaking tourists can book tavern role-play slots in Bamberg.

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
- GitHub Pages deployment for default branch and PR previews
- Optional Cachix integration via `CACHIX_AUTH_TOKEN`

## Future work

- Payment provider integration (kept as future work in the servant ecosystem)

# Brand assets

Sources for the Agent Bank mark, banner and diagrams. The PNGs used on the organization page
live in [`../profile/assets`](../profile/assets).

| Asset | Source | Notes |
| --- | --- | --- |
| Mark | `src/mark.svg` | Vault dial with a keyhole; three nodes are the owner key (amber), session key (teal) and co-signer (violet) |
| Avatar | `src/avatar.svg` | Full-bleed square for the GitHub organization avatar |
| Banner | `src/banner-dark.svg`, `src/banner-light.svg` | Profile header, rendered at 2x |
| Architecture | `src/architecture-dark.svg`, `src/architecture-light.svg` | System overview |
| Private proofs | `src/proofs-dark.svg`, `src/proofs-light.svg` | How a proof flows; generated layout, edit the SVG directly |

## Palette

| Token | Dark | Light |
| --- | --- | --- |
| Background | `#070B16` → `#0D1630` | `#FFFFFF` → `#EEF3FF` |
| Surface | `#0F1A35` | `#FFFFFF` |
| Text | `#F1F4FB` | `#0B1222` |
| Muted | `#93A1C2` | `#5B6680` |
| Blue | `#5B8CFF` | `#2F5BEA` |
| Teal (session key) | `#2DD4BF` | `#0D9488` |
| Amber (owner key) | `#F5B947` | `#D99A1E` |
| Violet (co-signer) | `#A78BFA` | `#8B5CF6` |

Typeface: [Inter](https://rsms.me/inter/); JetBrains Mono for code.

## Rendering

```bash
brand/render.sh profile/assets
```

The script fetches Inter from nixpkgs and renders every SVG with `rsvg-convert`.

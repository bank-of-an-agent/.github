#!/usr/bin/env bash
# Renders the brand SVG sources to PNG with Inter (fetched from nixpkgs).
# Usage: brand/render.sh <output-dir>
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
out="${1:-$here/../profile/assets}"
mkdir -p "$out"
inter="$(nix build --no-link --print-out-paths nixpkgs#inter)"
conf="$(mktemp)"
cat > "$conf" <<XML
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <dir>$inter/share/fonts</dir>
  <include ignore_missing="yes">/etc/fonts/fonts.conf</include>
</fontconfig>
XML
render() { FONTCONFIG_FILE="$conf" nix shell nixpkgs#librsvg -c rsvg-convert -w "$2" "$here/src/$1.svg" -o "$out/$1.png"; }
render mark 512
render avatar 1024
render banner-dark 2560
render banner-light 2560
render architecture-dark 2080
render architecture-light 2080
rm -f "$conf"
echo "rendered to $out"

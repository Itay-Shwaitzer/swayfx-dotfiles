#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p "$HOME/.config"
for d in sway waybar wofi mako kitty fastfetch; do
  rm -rf "$HOME/.config/$d"
  ln -s "$PWD/.config/$d" "$HOME/.config/$d"
done
rm -f "$HOME/.bashrc"
ln -s "$PWD/.bashrc" "$HOME/.bashrc"

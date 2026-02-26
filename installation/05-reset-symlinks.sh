#!/usr/bin/env bash
set -euo pipefail
for d in sway waybar wofi mako kitty fastfetch; do
  rm -rf "$HOME/.config/$d"
done
rm -f "$HOME/.bashrc"

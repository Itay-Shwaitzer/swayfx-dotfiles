#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

for d in sway waybar wofi mako kitty fastfetch; do
  if [ -L "$HOME/.config/$d" ]; then
    rm -f "$HOME/.config/$d"
  fi
done

if [ -L "$HOME/.bashrc" ]; then
  rm -f "$HOME/.bashrc"
fi

if [ -f packages/pacman.txt ]; then
  sudo pacman -Rns --noconfirm $(cat packages/pacman.txt) || true
fi

if command -v paru >/dev/null 2>&1 && [ -f packages/aur.txt ]; then
  paru -Rns --noconfirm $(cat packages/aur.txt) || true
fi

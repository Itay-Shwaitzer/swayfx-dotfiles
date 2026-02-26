#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
if command -v paru >/dev/null 2>&1; then
  paru -S --needed - < packages/aur.txt
else
  echo "paru not found"
  exit 1
fi

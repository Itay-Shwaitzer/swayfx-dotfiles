#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
"$DIR/01-packages.sh"
"$DIR/02-aur.sh"
"$DIR/03-symlinks.sh"

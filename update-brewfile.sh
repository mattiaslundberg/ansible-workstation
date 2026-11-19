#!/bin/sh
set -e

# Homebrew 7+ dumps uv/go/cargo/etc by default. uv currently errors
# (`uv tool list --show-with` is unsupported), which aborts the whole dump.
brew bundle dump --force --file=Brewfile \
  --no-uv \
  --no-go \
  --no-cargo \
  --no-flatpak \
  --no-krew \
  --no-winget

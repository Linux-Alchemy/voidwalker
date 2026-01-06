#!/bin/bash
# Installing the needed pkgs for Voidwalker/BlackArch

# Root-Check
if [ "$EUID" -eq 0 ]; then
  echo "Error: You cannot run this script as root"
  exit 1
fi

# Check if yay is installed
if ! command -v yay &> /dev/null; then
  echo "Yay is not installed. You must install it first."
  exit 1
fi

# Tools from AUR
aurpkg=(
  "brave-bin"
  "snapper-rollback"
  )

# Tools from pacman repo
pacpkg=(
  "snapper"
  "snap-pac"
  "btrfs-assistant"
  "dkms"
  "fastfetch"
  "opencl-nvidia"
  "nivida-open-dkms"
  "ttf-jetbrains-mono-nerd"
  "obsidian"
  "postgresql"
  "python-pipx"
  "inetutil"
  "tree-sitter-cli"
  "npm"
  )

# Installing AUR pkgs

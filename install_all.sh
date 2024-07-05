#!/bin/bash
echo "[install.sh] XCode Command Line Tools"
chmod +x /scripts/xcode_tools.sh
./scripts/xcode_tools.sh

echo "[install.sh] Homebrew"
chmod +x /scripts/brew_install.sh
./scripts/brew_install.sh

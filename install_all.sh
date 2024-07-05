#!/bin/bash
echo "[install.sh] XCode Command Line Tools"
chmod +x install_xcode_tools.sh
./install_xcode.sh

echo "[install.sh] Homebrew"
chmod +x install_brew.sh
./install_brew.sh

echo "[install.sh] Terminal"
chmod +x install_terminal.sh
./install_terminal.sh

echo "[install.sh] All done!"
#!/bin/bash

if xcode-select -p &> /dev/null; then
    echo "[xcode_tools.sh] Xcode Command Line Tools are already installed."
else
    echo "[xcode_tools.sh] Installing Xcode Command Line Tools..."
    xcode-select --install

    until xcode-select -p &> /dev/null; do
        sleep 5
    done

    echo "[xcode_tools.sh] Xcode Command Line Tools installation is complete."
fi
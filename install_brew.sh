#!/bin/bash

echo "[brew_install.sh] Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "[brew_install.sh] Sourcing list of packages..."
PACKAGE_LIST="config_brew.txt"

current_package_number=0
failed_packages=()


# shellcheck disable=SC2126
total_packages=$(grep -v '^!' "$PACKAGE_LIST" | wc -l | xargs)

while IFS= read -r package; do
    if [[ $package == \!* ]]; then
        echo "[brew_install.sh] Category ${package#!}"
        continue
    fi
    ((current_package_number++))

    echo "[brew_install.sh][Installing $current_package_number / $total_packages]: $package..."
    brew install "$package"


if ! mycmd; then
    echo "[brew_install.sh][Install failed]: $package"
    failed_packages+=("$package")
fi
done < "$PACKAGE_LIST"

echo "[brew_install.sh] Homebrew packages installed!"

# Step 3: Check if there are any failed packages and print them
if [ ${#failed_packages[@]} -ne 0 ]; then
    echo "[brew_install.sh] Failed to install the following packages:"
    printf '%s\n' "${failed_packages[@]}"
fi
echo "[brew_install.sh] Installed $current_package_number packages out of $total_packages."
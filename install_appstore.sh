#!/bin/bash
echo "[install_appstore.sh] Before this script proceeds, please ensure that you are signed in to the App Store. Press any key to continue..."
read -n 1 -s -r -p ""

echo "[install_appstore.sh] Sourcing list of apps..."
apps_LIST="config_appstore.txt"

current_apps_number=0
failed_apps=()


# shellcheck disable=SC2126
total_apps=$(grep -v '^!' "$apps_LIST" | wc -l | xargs)

while IFS= read -r apps; do
    if [[ $apps == \!* ]]; then
        echo "[install_appstore.sh] Category ${apps#!}"
        continue
    fi
    ((current_apps_number++))

    echo "[install_appstore.sh][Installing $current_apps_number / $total_apps]: $apps..."
    mas lucky "$apps"


if ! mycmd; then
    echo "[install_appstore.sh][Install failed]: $apps"
    failed_apps+=("$apps")
fi
done < "$apps_LIST"

echo "[install_appstore.sh] App Store apps installed!"

# Step 3: Check if there are any failed appss and print them
if [ ${#failed_apps[@]} -ne 0 ]; then
    echo "[install_appstore.sh] Failed to install the following appss:"
    printf '%s\n' "${failed_apps[@]}"
fi
echo "[install_appstore.sh] Installed $current_apps_number appss out of $total_apps."
# Setting Up A New Mac
#docs

I'm writing this guide inspired by my girlfriend who loses and buys a new Mac on average once a year - helping her set up her new Mac reminded me I should probably do a better job documenting the current setup I have on my Mac.

## Installing Brew
[Homebrew](https://brew.sh) is arguably the best app manager in the market right now and makes handling a bunch of different apps a lot easier on MacOS.

To download Homebrew, you first have to fire up a terminal and run the following command -

```*Bash*
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Next, you're going to validate the download, which would be running the following command. 

```*bash*
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Once you're done with this, you're going to run a download script which will automatically download all the files listed in the list of brew packages to download. 

#### Script
```*Bash*
#!/bin/bash

echo "Installing brew packages"

# Count the total number of packages in the file
total_packages=$(wc -l < brewpkgs.txt)
installed_count=0

while read -r app; do
    echo "Downloading $app"
    brew install --cask "$app"
    echo "Downloaded $app"

    # Increment the installed count
    ((installed_count++))

    # Calculate the percentage of packages installed
    percent=$((installed_count * 100 / total_packages))

    echo "Progress: $installed_count/$total_packages ($percent%) installed"
    echo "--------------------------------"
done < brewpkgs.txt

echo "All packages installed."

```

#### List of Brew Packages (`brewpkgs.txt`)
```*Text*
google-chrome
arc
autojump
gh
python
anki
tabby
cleanshot
warp
speedtest-cli
sqlite
jupyterlab
googletest
brave-browser
emacs
jetbrains-toolbox
neovim
telegram
clay
notion
raindropio
around
iterm2
pycharm
tailscale
numi
mos
clion
alfred
dataspell
gnuradio
whatsapp
microsoft-office
trash
rename
tree
visual-studio-code
cmake
node
discord
zoom
slack
logi-options-plus
rectangle-pro
mactex
spotify
vimcal
superhuman
todoist
automattic-texts
pitch

```



#### Upgrading Casks
During your duration of using this, it's periodically worth upgrading your casks - 
```*Bash*
brew upgrade --cask
```

#### App Store Specific 
* [Goodnotes](https://apps.apple.com/ca/app/goodnotes-6/id1444383602)
* [Toggl Track](https://apps.apple.com/ca/app/toggl-track-hours-time-log/id1291898086)
* [Testflight](https://apps.apple.com/ca/app/testflight/id899247664)
* [Path](https://apps.apple.com/ca/app/path-help-me-decide/id1561401686)
* [App Uninstaller](https://apps.apple.com/ca/app/delete-apps-uninstaller/id1033808943?mt=12)
* [XCode](https://apps.apple.com/ca/app/xcode/id497799835?mt=12)
* [Polar](https://apps.apple.com/ca/app/polarr-pro-photo-editor/id1077124956)
* [Handmirror](https://apps.apple.com/ca/app/hand-mirror/id1502839586?mt=12)
* [Bear](https://apps.apple.com/ca/app/bear-markdown-notes/id1091189122?mt=12)

# Setting Up The Browser
###### Shopping
* [Aeroplan Shopping](https://chromewebstore.google.com/detail/aeroplan-shopping-button/jcggkkmhpnjfdkbdopniflkghfkgoalo)
* [Select Card](https://chromewebstore.google.com/detail/meetselect-benefit-notifi/ijmloamhflnhhdoidfkhlhindnhladma)

###### Security
* [Bitwarden](https://chromewebstore.google.com/detail/bitwarden-password-manage/nngceckbapebfimnlniiiahkandclblb)
* [Proton Pass](https://chromewebstore.google.com/detail/proton-pass-free-password/ghmbeldphafepmbegfdlkpapadhbakde)

###### Utility
* [Dark Reader](https://chromewebstore.google.com/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)
* [Silk](https://chromewebstore.google.com/detail/silk-privacy-pass-client/ajhmfdgkijocedmfjonnpjfojldioehi)
* [uBlock Origin](https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
* [Vimium](https://chromewebstore.google.com/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
* [Youtube Speed Control](https://chromewebstore.google.com/detail/hdannnflhlmdablckfkjpleikpphncik)

###### Integrations
* [Matter](https://chromewebstore.google.com/detail/matter/knjbgabkeojmfdhindppcmhhfiembkeb)
* [PitchBook](https://chromewebstore.google.com/detail/pitchbook-extension-for-g/lpkjmgldcglmfilmnkcacbolkpkghdaa)
* [Raindrop](https://chromewebstore.google.com/detail/raindropio/ldgfbffkinooeloadekpmfoklnobpien)
* [Tweet Hunter](https://chromewebstore.google.com/detail/tweet-hunter-x-sidebar-fo/amoldiondpmjdnllknhklocndiibkcoe)

# Dock
* Finder
* Arc
* Superhuman
* Vimcal
* Bear
* Clay
* Todoist
* Texts
* Cleft
* Goodnotes
* Notion
* Figma
* Pitch
* Around
* Zoom
* WhatsApp
* iMessage
* Facetime
* Telegram
* Spotify
* Discord
* Bitwarden
* Slack
* Find My
* Word
* Excel
* Pitchbook
* App Store
* iTerm2
* Visual Studio Code
* Pycharm
* Clion


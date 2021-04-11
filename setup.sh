# #!/bin/bash

# # Install XCode developer tools
# xcode-select --install;

# # Install brew and install apps / tools
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
# brew bundle;

# Organize Dock
defaults write com.apple.dock persistent-apps -array;
cp ./com.apple.dock.plist /Users/$1/Library/Preferences/com.apple.dock.plist;
killall Dock

# My default project directory
cd ~/;
mkdir -p workspace;

# Configure Git
git config --global init.defaultBranch main
git config --global user.email "$2"
git config --global user.name "$3"
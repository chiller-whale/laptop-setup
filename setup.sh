# #!/bin/bash

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

# # Install XCode developer tools
echo "Installing XCode Dev Tools..."
xcode-select --install;

# # Install brew and install apps / tools
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
echo "Installing Applications"
brew bundle;

# Organize Dock
echo "Organizing Dock..."
defaults write com.apple.dock persistent-apps -array;
cp ./com.apple.dock.plist /Users/$1/Library/Preferences/com.apple.dock.plist;
killall Dock

# My default project directory
echo "Making directories..."
# cd ~/;
# mkdir -p workspace;

# Configure Git
echo "Configuring git..."
git config --global init.defaultBranch main
git config --global user.email "$2"
git config --global user.name "$3"

# Generate SSH Key
echo "Generating RSA Key..."
ssh-keygen -t rsa
pbcopy < ~/.ssh/id_rsa.pub
echo "ssh public key copied to clip board. Add it to github profile at https://github.com/settings/profile"

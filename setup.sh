# #!/bin/bash

# My default project directory
echo "Making directories..."
mkdir -p ~/workspace;

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
cp .zshrc ~/

# # Install XCode developer tools
echo "Installing XCode Dev Tools...";
xcode-select --install;

# # Install brew and install apps / tools
echo "Installing Brew...";
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
echo "Installing Applications";
brew bundle;

# Going to need 1Password to login to stuff
read -p "Login to 1Password - https://my.1password.com/signin?l=en. Press any key to continue.";

# Organize Dock
echo "Organizing Dock...";
defaults write com.apple.dock persistent-apps -array;
cp ./com.apple.dock.plist /Users/$1/Library/Preferences/com.apple.dock.plist;
killall Dock;

# Configure Git
echo "Configuring git...";
git config --global init.defaultBranch main;
git config --global user.email "$2";
git config --global user.name "$3";
gh auth login;

echo "Installing powerline fonts...";
cd ~/workspace;
git clone https://github.com/powerline/fonts.git;
./fonts/install.sh;


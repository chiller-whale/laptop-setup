# Laptop Setup

This repo contains scripts and todos for setting up new laptops.

1. Make `setup.sh` executable with `chmod 755 setup.sh` and run the script passing your macos user name, email to use for git, and name to use for git as arguments. e.g. `./setup.sh chiller-whale chiller-whale@chill.com "Tyler Freeman"`.
2. [Enable VS Code shell command.](https://code.visualstudio.com/docs/setup/mac) 

# Updating dock configuration.

To update what apps are in the dock when running the setup script, use the `update-dock.sh` script and pass your username as an argument. `update-dock.sh chiller-whale` script to update `com.apple.dock.plist`. After the file has been updated, push the changes to the remote repo.

# Manual Configurations

## Add Gifox and Caffiene as start up items.

Open those applications and select run on start.

## Configure 3 Finger Drag

System Preferences > Accessibility > Pointer Control > Track Pad Options

# TODO:

1. [Uninstall default mac apps](https://nektony.com/how-to/uninstall-default-apple-apps-on-mac)

2. [Copy iterm config](https://stackoverflow.com/questions/22943676/how-to-export-iterm2-profiles)

3. Set up oh-my-zsh, install fonts

4. Add documentation on how to install specific language / plaform stuff for common tooling (e.g. Go, [Java](https://stackoverflow.com/questions/55834845/unable-to-install-java8-with-homebrew), Python)

5. Add zhrc alias




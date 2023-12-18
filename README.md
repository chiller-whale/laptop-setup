# Laptop Setup

This repo contains scripts and todos for setting up new laptops.

1. Make `setup.sh` executable with `chmod 755 setup.sh` and run the script passing your macos user name, email to use for git, and name to use for git as arguments. e.g. `./setup.sh chiller-whale chiller-whale@chill.com "Tyler Freeman"`.
2. [Enable VS Code shell command.](https://code.visualstudio.com/docs/setup/mac) 
# Manual Configurations

- Add Gifox and Caffiene as start up items.
- Configure 3 Finger Drag
  - System Preferences > Accessibility > Pointer Control > Track Pad Options
- Configure iterm preferences to import from `com.googlecode.iterm2.plist`
  - iterm > preferences > general > preferences > import from folder
# Updating dock configuration.

To update what apps are in the dock when running the setup script, use the `update-dock.sh` script and pass your username as an argument. `update-dock.sh chiller-whale` script to update `com.apple.dock.plist`. After the file has been updated, push the changes to the remote repo.

# VS Code Settings Sync

I use Github to manage VS Code settings. Sometimes code get's stuck with a microsoft login. To fix this, I completely uninstall code with:
```
rm -fr ~/Library/Preferences/com.microsoft.VSCode.helper.plist 
rm -fr ~/Library/Preferences/com.microsoft.VSCode.plist 
rm -fr ~/Library/Caches/com.microsoft.VSCode
rm -fr ~/Library/Caches/com.microsoft.VSCode.ShipIt/
rm -fr ~/Library/Application\ Support/Code/
rm -fr ~/Library/Saved\ Application\ State/com.microsoft.VSCode.savedState/
rm -fr ~/.vscode/
```

# TODO:

4. Add documentation on how to install specific language / plaform stuff for common tooling (e.g. Go, [Java](https://stackoverflow.com/questions/55834845/unable-to-install-java8-with-homebrew), Python)




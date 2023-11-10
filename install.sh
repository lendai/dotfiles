#!/bin/zsh

# Ask for the administrator password upfront
echo "This requires sudo privilegies"
sudo -v

# Agree with xcode terms
sudo xcodebuild -license accept
 
# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

## Replace homedir dotfiles with the ones from repo
echo "Downloading and running oh-my-zsh installation"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source zsh.sh

## Install xcode commandlinetools
if [ ! -e /Library/Developer/CommandLineTools/usr/bin/gcc ]
then
    touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
    xcodeclt=$(softwareupdate --list | grep -A 1 '*' | grep -B 1 'Command Line' | head -n 1 | awk '{print $2}')
    softwareupdate --install ${xcodeclt}
fi

## Make sure homebrew exists, otherwise install it
if [ ! -e /opt/homebrew/bin/brew ]
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Verifying homebrew installation"
brew doctor

echo "Installing tools and application with brew"
source Brewfile.sh

## Reload zsh
echo "Reloading zsh shell with new environment"
source ~/.zshrc 


## Make .macos executable and run
chmod +x macos.sh
chmod +x macos-daniel.sh
echo "Updating some macos settings, this requires sudo password"
source macos.sh
source macos-daniel.sh

# Install node dev environment
source node.sh

# Configure git
git config --global user.name "Daniel Mauno Pettersson"
git config --global user.email daniel@mauno.io
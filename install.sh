#!/bin/bash

# Ask for the administrator password upfront
echo "This requires sudo privilegies"
sudo -v

# Agree with xcode terms
sudo xcodebuild -license accept
 
# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

dotfilesDir=$(pwd)

dotfiles=".zshrc .gitconfig .gitignore"

## Replace homedir $dotfiles with the ones from repo
source dotfiles.sh

## Install xcode commandlinetools
if [ ! -e /Library/Developer/CommandLineTools/usr/bin/gcc ]
then
    touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
    xcodeclt=$(softwareupdate --list | grep -A 1 '*' | grep -B 1 'Command Line' | head -n 1 | awk '{print $2}')
    softwareupdate --install ${xcodeclt}
fi

## Make sure homebrew exists, otherwise install it
if [ ! -e /usr/local/bin/brew ]
then
    echo "chmod 775 /usr/local for Homebrew"
    sudo chmod 775 /usr/local
    echo "chmod 775 /usr/local/include for Homebrew"
    sudo chmod 775 /usr/local/include
    echo "Homebrew missing. Installing, please wait"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Verifying homebrew installation"
brew doctor

echo "Installing tools and application with brew"
source Brewfile.sh

echo "Downloading and running oh-my-zsh installation"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source zsh.sh

## Reload bash
echo "Reloading bash shell with new environment"
source ~/.bashrc

execdir=$(pwd)

## Make .macos executable and run
chmod +x ${execdir}/.macos
echo "Updating some macos settings, this requires sudo password"
${execdir}/.macos

# Install node dev environment
${execdir}/.node

# Install all recommended software updates
softwareupdate --install --recommended

## Enable FileVault encryption
echo "Enabling FileVault encryption"
sudo fdesetup enable
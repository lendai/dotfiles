#!/bin/bash

# Ask for the administrator password upfront
echo "This requires sudo privilegies"
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

dotfilesDir=$(pwd)

dotfiles=".bashrc .bash_profile .gitconfig .gitignore"

## Replace homedir $dotfiles with the ones from repo
for file in $dotfiles ; do
    echo "Removing old ~/${file}"
    rm -f ~/${file}
    echo "Symlinking ${file} from ~/dotfiles directory"
    ln -s ${dotfilesDir}/${file} ~/${file}
done

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
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Verifying homebrew installation"
brew doctor

echo "Installing tools and application with brew"
source ${dotfilesDir}/Brewfile.sh

## Reload bash
echo "Reloading bash shell with new environment"
source ~/.bashrc

## Generate an ssh-keypair unless it exist
if [ -f ~/.ssh/id_rsa ]
then
    echo "~/.ssh/id_rsa already exists, skip keypair generation"
else
    echo "No ssh keypair found in .ssh/id_rsa"
    echo "To generate a new one:"
    echo "mkd ~/.ssh"
    echo "ssh-keygen -b 2048 -t rsa -f id_rsa -P \"\" -C \"your-email@exmaple.com\""
    echo "la ~/.ssh"
fi

execdir=$(pwd)

## Enable FileVault encryption
echo "Enabling FileVault encryption"
sudo fdesetup enable

## Make .macos executable and run
chmod +x ~/dotfiles/.macos
echo "Updating some macos settings, this requires sudo password"
~/dotfiles/.macos

# Install node dev environment
~/dotfiles/.node

# Install all recommended software updates
softwareupdate --install --recommended

# Open instructions for everything that's not installable by command line in a good way
~/dotfiles/.open-in-browser
#!/bin/bash

## Always make sure to use latest Homebrew
brew update

## Update already-installed formula
brew upgrade

## Install cask
brew install caskroom/cask/brew-cask

## Completions
brew tap homebrew/completions
brew install bash-completion

## Utils
brew install autoconf
brew install automake
brew install ctags
brew install curl
brew install libyaml
brew install openssl
brew install tmux
brew install tree
brew install unrar
brew install watch
brew install wget
brew install xz
brew install jq

# Network utils
brew install ettercap
brew install netcat
brew install nmap
brew install reaver
brew install tcpdump
brew install wireshark

## Software development
brew install visual-studio-code

## Chat
brew cask install slack

## Entertainment
brew cask install spotify
brew cask install vlc

## Virtualization
brew install docker-toolbox

## Other
brew cask install transmission

## If it exists as an .app, link it to /Users/<you>/Applications
brew linkapps --local

## Remove outdated versions
brew cleanup
brew cask cleanup

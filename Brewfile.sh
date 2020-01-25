#!/bin/bash

## Always make sure to use latest Homebrew
brew update

## Update already-installed formula
brew upgrade

## Install cask
brew tap homebrew/cask

## Completions
brew install bash-completion

## Utils
brew install curl
brew install libyaml
brew install tmux
brew install tree
brew install unrar
brew install watch
brew install wget
brew install xz
brew install jq
brew install pwgen

# Network utils
brew install ettercap
brew install netcat
brew install nmap
brew install reaver
brew install tcpdump
brew install wireshark
brew cask install wireshark
brew cask install tor-browser
brew cask install charles

## Software development
brew cask install visual-studio-code
brew cask install postico
brew cask install graphql-playground
brew cask install sketch
brew cask install abstract
brew cask install sequel-pro
brew install mysql
brew install mysql-client
brew install postgresql

## Chat
brew cask install slack
brew cask install telegram
brew cask install whatsapp

## Entertainment
brew cask install spotify
brew cask install vlc

## Virtualization
brew install homebrew/cask/docker-toolbox

## Other
brew cask install google-chrome
brew cask install transmission
brew cask install caffeine
brew cask install nordvpn

## Remove outdated versions
brew cleanup

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

## Software development
brew cask install visual-studio-code
brew cask install postico
brew cask install graphql-playground
brew cask install sketch
brew cask install abstract

## Chat
brew cask install slack
brew cask install telegram

## Entertainment
brew cask install spotify
brew cask install vlc

## Virtualization
brew install homebrew/cask/docker-toolbox

## Other
brew cask install transmission
brew cask install caffeine

## Remove outdated versions
brew cleanup
brew cask cleanup

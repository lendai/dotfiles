#!/bin/bash

## Always make sure to use latest Homebrew
brew update

## Update already-installed formula
brew upgrade

## Install cask
brew tap homebrew/cask

## Utils
brew install curl
brew install libyaml
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
brew install --cask wireshark
brew install tor-browser
brew install --cask tunnelblick

## Software development
brew install visual-studio-code
brew install postico
brew install google-cloud-sdk 
brew install --cask linear-linear
brew install --cask github

## Chat
brew install --cask slack
brew install --cask telegram
brew install --cask whatsapp
brew install --cask discord

## Entertainment
brew install spotify
brew install vlc
brew install mediainfo

## Other
brew install caffeine
brew install --cask cron
brew install --cask 1password-cli
brew install --cask logitune

## Remove outdated versions
brew cleanup

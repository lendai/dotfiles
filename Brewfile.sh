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
brew install wireshark
brew install wireshark
brew install tor-browser

## Software development
brew install visual-studio-code
brew install postico
brew install sequel-pro
brew install graphql-playground
brew install google-cloud-sdk 

## Chat
brew install slack
brew install telegram
brew install whatsapp

## Entertainment
brew install spotify
brew install vlc
brew install mediainfo

## Other
brew install transmission
brew install caffeine

## Remove outdated versions
brew cleanup

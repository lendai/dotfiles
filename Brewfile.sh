#!/bin/bash
# Homebrew packages for this machine. Run from repo root: `source Brewfile.sh`
# Requires: Homebrew at /opt/homebrew (Apple Silicon) or /usr/local (Intel).

set -u

## Always make sure to use latest Homebrew metadata
brew update

## Update already-installed formulae and casks (can be slow; comment out if undesired)
brew upgrade

###############################################################################
# CLI utilities
###############################################################################

brew install curl
brew install libyaml
brew install watch
brew install wget
brew install xz
brew install jq
brew install pwgen
brew install fd
brew install fzf
brew install bat
brew install gh
brew install lf

###############################################################################
# Network / security tooling
###############################################################################

brew install netcat
brew install nmap
brew install tcpdump
brew install ettercap

###############################################################################
# Development – languages & runtimes
###############################################################################

brew install pyenv
brew install pipx
brew install poetry

###############################################################################
# Development – databases & services
###############################################################################

brew install postgresql@14
brew install redis

###############################################################################
# Development – misc CLIs
###############################################################################

brew install stripe-cli
brew install ffmpeg          # pulls in codec deps automatically
brew install zeromq
brew install pnpm

###############################################################################
# Development – GUI apps
###############################################################################

brew install --cask cursor
brew install --cask visual-studio-code
brew install --cask postico
brew install --cask gcloud-cli
brew install --cask linear-linear
brew install --cask github
brew install --cask docker
brew install --cask ngrok

###############################################################################
# Browsers
###############################################################################

brew install --cask google-chrome
brew install --cask tor-browser

###############################################################################
# Chat & comms
###############################################################################

brew install --cask slack
brew install --cask telegram
brew install --cask whatsapp
brew install --cask discord
brew install --cask zoom
brew install --cask microsoft-teams

###############################################################################
# AI tools
###############################################################################

brew install --cask claude
brew install --cask chatgpt

###############################################################################
# Productivity & utilities
###############################################################################

brew install --cask caffeine
brew install --cask notion-calendar
brew install --cask 1password
brew install --cask 1password-cli
brew install --cask rectangle
brew install --cask logitune
brew install --cask nordvpn

###############################################################################
# Media & misc
###############################################################################

brew install --cask spotify
brew install --cask vlc
brew install media-info
brew install --cask plex
brew install --cask screen-studio
brew install --cask wireshark

## Remove outdated versions
brew cleanup

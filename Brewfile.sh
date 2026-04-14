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
brew install ripgrep
brew install fd
brew install fzf
brew install bat
brew install lazygit
brew install gh
brew install lf

###############################################################################
# Optional network / security tooling (uncomment if you still want them)
# Some tools may be unavailable or awkward on Apple Silicon; verify before enabling.
#
# brew install netcat
# brew install nmap
# brew install tcpdump
# brew install ettercap
# brew install reaver
# brew install --cask wireshark
# brew install --cask tor-browser
# brew install --cask tunnelblick
###############################################################################

###############################################################################
# Development
###############################################################################

brew install --cask cursor
brew install --cask visual-studio-code
brew install --cask postico
brew install --cask gcloud-cli
brew install --cask linear-linear
brew install --cask github

###############################################################################
# Chat & comms
###############################################################################

brew install --cask slack
brew install --cask telegram
brew install --cask whatsapp
brew install --cask discord

###############################################################################
# Media & misc
###############################################################################

brew install --cask spotify
brew install --cask vlc
brew install media-info

brew install --cask caffeine
# Notion Calendar superseded the old "Cron" calendar cask on Homebrew.
brew install --cask notion-calendar
brew install --cask 1password-cli
brew install --cask logitune

## Remove outdated versions
brew cleanup

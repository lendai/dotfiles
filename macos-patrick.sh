# Show only running apps in dock
defaults write com.apple.dock static-only -bool true; killall Dock

# Disable "smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Configure git
git config --global user.name "Patrick Lef"
git config --global user.email patrick.lef@gmail.com

# Install gitx
brew install --cask rowanj-gitx

# Install sizeup
brew install --cask sizeup

# Install Github CLI
brew install gh
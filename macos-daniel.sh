# Move the dock to the left
defaults write com.apple.dock orientation left
killall Dock # to make it take effect

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable "smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Configure git
git config --global user.name "Daniel Mauno Pettersson"
git config --global user.email daniel@mauno.io
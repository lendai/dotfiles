# Move the dock to the left
defaults write com.apple.dock orientation -string left
killall Dock # to make it take effect

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
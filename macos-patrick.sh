# Show only running apps in dock
defaults write com.apple.dock static-only -bool false; killall Dock

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

# Install Figma
brew install --cask figma

# Install Linear
brew install --cask linear-linear

# Install NordVPN
brew install --cask nordvpn

# Install Messenger (Facebook)
brew install --cask messenger

# Install Dropbox
brew install --cask dropbox

# Set key repeat to be faster than normal
defaults write com.apple.universalaccess slowKey -int 0 # Disable Slow Keys.
defaults write NSGlobalDomain InitialKeyRepeat -int 0 # Set key repeat triggering delay to even shorter.
defaults write NSGlobalDomain KeyRepeat -int 0 # Set key repeat rate to even faster.

# Turn off sound for screenshot and trash
defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled -bool false
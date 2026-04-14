# Reset the env variable NVM DIR
unset NVM_DIR

# Run nvm install script (pin tag; see https://github.com/nvm-sh/nvm/releases)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

# Reload the shell profile to set NVM_DIR again
source ~/.zshrc

# Install current LTS Node (adjust version pin if your team standardizes on another LTS)
nvm install --lts

# Optional: install an additional pinned runtime, e.g. nvm install 22

# Set default to the latest installed LTS / newest version
nvm alias default 'lts/*'

# Enable package managers shipped with Node (pnpm, Yarn) without global npm installs
corepack enable

# Enables `git open` to open the current git repo in the browser
npm install --global git-open

# Install `jwt` command for parsing jwt tokens
npm install --global jwt-cli

# install ttab for starting multiple terminal tabs
npm install --global ttab

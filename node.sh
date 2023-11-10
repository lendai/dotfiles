# Reset the env variable NVM DIR
unset NVM_DIR

# Run nvm install script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Reload the bash profile to set NVM DIR again
source ~/.zshrc

# Install node version 12
nvm install 12

# Install node version 18.17.1
nvm install 18.17.1

# Set the latest version of node as the default
nvm alias default node

# Enables `git open` to open the current git repo in the browser
npm install --global git-open

# Install `jwt` command for parsing jwt tokens
npm install --global jwt-cli

# install ttab for starting multiple terminal tabs 
npm install --global ttab
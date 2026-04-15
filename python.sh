#!/bin/bash
# Python development environment via pyenv, pipx, and poetry.
# Requires: Homebrew (pyenv, pipx, poetry installed via Brewfile.sh).

set -u

# Ensure pyenv is initialised for this shell session
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Install latest stable Python 3 (adjust pin if your team standardises on another version)
PYTHON_VERSION="3.14.4"

if ! pyenv versions --bare | grep -q "^${PYTHON_VERSION}$"; then
  echo "Installing Python ${PYTHON_VERSION} via pyenv"
  pyenv install "${PYTHON_VERSION}"
fi

pyenv global "${PYTHON_VERSION}"

echo "Python $(python3 --version) is now the global default"

# pipx: ensure its path is available (installs CLI tools in isolated venvs)
pipx ensurepath

# Optional: install common Python CLI tools via pipx (uncomment as needed)
# pipx install black
# pipx install ruff
# pipx install httpie
# pipx install uvicorn

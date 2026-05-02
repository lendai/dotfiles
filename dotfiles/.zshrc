export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dotfile"
plugins=(
  git
  github
  macos
  gnu-utils
  colorize
  colored-man-pages
  cp
  extract
  web-search
  themes
  vault
  timer
  docker-compose
  vscode
)

source "$HOME/.oh-my-zsh/oh-my-zsh.sh"

## Dotfiles zsh snippets (explicit order; repo lives at ~/dotfiles)
typeset -a DOTFILES_ZSH=(
  path
  exports
  aliases
  functions
  ps1
)
for f in "${DOTFILES_ZSH[@]}"; do
  [[ -r "$HOME/dotfiles/zsh/$f" ]] && source "$HOME/dotfiles/zsh/$f"
done

## Load bash-completion for a number of commands
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#     . $(brew --prefix)/etc/bash_completion
# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# --- Optional: uncomment after installing / configuring these tools ---
# # envman (https://github.com/direnv/envman or your envman of choice)
# [ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# # pnpm (https://pnpm.io/installation)
# export PNPM_HOME="$HOME/Library/pnpm"
# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" ;;
# esac

# # Example: prepend a custom toolchain to PATH
# # export PATH="$HOME/.antigravity/antigravity/bin:$PATH"

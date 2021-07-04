export ZSH="/Users/`whoami`/.oh-my-zsh"

ZSH_THEME="dotfile"
plugins=(git github osx gnu-utils colorize colored-man-pages cp extract web-search themes vagrant vscode fabric vault timer docker-compose sublime)

source ~/.oh-my-zsh/oh-my-zsh.sh

## Setup zsh environment
for f in $(ls ./zsh) ; do
    source $(pwd)/zsh/${f}
done

## Load bash-completion for a number of commands
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#     . $(brew --prefix)/etc/bash_completion
# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ZSH="/Users/patrick/.oh-my-zsh"

ZSH_THEME="dotfile"
plugins=(git github osx gnu-utils colorize colored-man-pages cp extract web-search themes vagrant vscode fabric vault timer docker-compose sublime)

source ~/.oh-my-zsh/oh-my-zsh.sh

## Setup zsh environment
for f in $(ls ~/dotfiles/zsh) ; do
    source ~/dotfiles/zsh/${f}
done

## Load bash-completion for a number of commands
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#     . $(brew --prefix)/etc/bash_completion
# fi

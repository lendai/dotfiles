export ZSH="/Users/lendai/.oh-my-zsh"

ZSH_THEME="dotfile"
plugins=(git github osx gnu-utils colorize colored-man-pages cp extract web-search themes vagrant vscode fabric vault timer docker-compose sublime)

source ~/.oh-my-zsh/oh-my-zsh.sh

## Setup zsh environment
for f in $(ls ~/dotfiles/zsh) ; do
    source ~/dotfiles/zsh/${f}
done

# Turn off sharing of command history (keep separate history per terminal window)
unsetopt SHARE_HISTORY  
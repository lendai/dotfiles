## Load bash-completion for a number of commands
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

## Setup bash environment
for f in $(ls ~/dotfiles/bash) ; do
    source ~/dotfiles/bash/${f}
done


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lendai/google-cloud-sdk/path.bash.inc' ]; then . '/Users/lendai/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lendai/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/lendai/google-cloud-sdk/completion.bash.inc'; fi

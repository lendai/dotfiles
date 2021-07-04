#!/bin/bash

dotfilesDir=$(pwd)/dotfiles

dotfiles=".bashrc .bash_profile .gitconfig .gitignore"

## Replace homedir $dotfiles with the ones from repo
for file in $dotfiles ; do
    echo "Removing old ~/${file}"
    rm -f ~/${file}
    echo "Symlinking ${file} from ~/dotfiles/dotfiles directory"
    ln -s ${dotfilesDir}/${file} ~/${file}
done
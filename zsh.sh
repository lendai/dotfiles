#!/bin/bash

themesDir=$(pwd)/themes/

themes="dotfile.zsh-theme"

## Replace homedir $dotfiles with the ones from repo
for file in $themes ; do
    echo "Removing old ~/.oh-my-zsh/custom/themes/${file}"
    rm -f ~/.oh-my-zsh/custom/themes/${file}
    echo "Symlinking ${file} from ~/dotfiles/themes directory"
    ln -s ${themesDir}/${file} ~/.oh-my-zsh/custom/themes/${file}
done

dotfilesDir=$(pwd)/dotfiles/
zshFile=".zshrc"
echo "Removing old ~/${zshFile}"
rm -f ~/${zshFile}
echo "Symlinking ${zshFile} from ~/dotfiles/dotfiles directory"
ln -s ${dotfilesDir}/${zshFile} ~/${zshFile}
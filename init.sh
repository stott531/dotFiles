#! /bin/bash

# get the absolute path of our dotfiles repository
DIR=$(cd `dirname $0` && pwd)

# overwrite existing symlinks if necessary
# write any additional symlinks for other source files in the form
# ln -sf $DIR/${dotfile you want to link} ${dotfile you want to overwrite}

DOTFILES=( '.bashrc' '.vimrc' '.zshrc' '.gitconfig' )

for dotfile in "${DOTFILES[@]}"
do
    ln -sf ${DIR}/${dotfile} ~/${dotfile}
done

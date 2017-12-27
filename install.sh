#!/bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc"

echo "Creating $olddir for backups"
mkdir -p $olddir
echo "...done"

cd $dir

for file in $files; do
    echo "Moving existing dotfile"
    mv ~/.$file ~/dotfiles_old
    echo "Symlinking"
    ln -s $dir/$file ~/.$file
done

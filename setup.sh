#!/bin/sh

#Setup Vim with Vundle
ln -s ~/.dotfiles/.vim ~
ln -s ~/.dotfiles/.vimrc ~
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

#Bash config
ln -s ~/.dotfiles/.bashrc ~

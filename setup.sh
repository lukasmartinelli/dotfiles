#!/bin/sh
CWD=$(pwd)

#Setup Vim with Vundle
mkdir -p .vim/bundle
ln -sv $CWD/.vim $HOME
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
vim +BundleInstall +qall

#Vim config
ln -sv $CWD/.vimrc $HOME

#Zsh config
ln -sv $CWD/.zshrc $HOME

#Tmux config
ln -sv $CWD/.tmux.conf $HOME

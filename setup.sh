#!/bin/sh
CWD=$(pwd)

#Setup Vim with Vundle
ln -sv $CWD/.vim $HOME
vim +BundleInstall +qall

#Vim config
ln -sv $CWD/.vimrc $HOME

#Zsh config
ln -sv $CWD/.zshrc $HOME

#Setup xorg
ln -sv $CWD/.xinitrc $HOME
ln -sv $CWD/.Xresources $HOME

#Setup i3 tiling wm
ln -sv $CWD/.i3 $HOME
mkdir -p $HOME/config/i3
ln -sv $CWD/i3status.conf $HOME/config/i3status

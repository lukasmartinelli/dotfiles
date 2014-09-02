#!/bin/bash
CWD=$(pwd)

#Setup Vim with Vundle
ln -nfsv $CWD/.vim $HOME
vim +BundleInstall +qall

#Vim config
ln -nfsv $CWD/.vimrc $HOME

#Zsh config
ln -nfsv $CWD/.zshrc $HOME

#Setup xorg
ln -nfsv $CWD/.xinitrc $HOME
ln -nfsv $CWD/.Xresources $HOME

#Setup i3 tiling wm
ln -nfsv $CWD/.i3 $HOME
ln -nfsv $CWD/.i3status.conf $HOME

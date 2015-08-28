#!/bin/bash
CWD=$(pwd)

#Setup Vim with Vundle
ln -nfsv $CWD/.vim $HOME
vim +BundleInstall +qall

#Vim config
ln -nfsv $CWD/.vimrc $HOME

#Zsh config
ln -nfsv $CWD/.zshrc $HOME

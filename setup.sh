#!/bin/sh
CWD=$(pwd)

#Setup Vim with Vundle
ln -sv $CWD/.vim $HOME
vim +BundleInstall +qall

#Vim config
ln -sv $CWD/.vimrc $HOME

#Zsh config
ln -sv $CWD/.zshrc $HOME

#Tmux config
ln -sv $CWD/.tmux.conf $HOME

#Expose guake config
ln -sv $CWD/.guake $HOME

#Guake theme
./.guake/guake-colors-solarized/set_light.sh

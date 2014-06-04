#!/bin/sh
CWD=$(pwd)

#Setup Vim with Vundle
mkdir -p .vim/bundle
ln -sv $CWD/.vim $HOME
vim +BundleInstall +qall

#Vim config
ln -sv $CWD/.vimrc $HOME

#Zsh config
ln -sv $CWD/.zshrc $HOME

#Tmux config
ln -sv $CWD/.tmux.conf $HOME

#Guake theme
./.guake/guake-colors-solarized/set_light.sh

#Setup dircolors theme
eval `dircolors .guake/dircolors-solarized/dircolors.ansi-light


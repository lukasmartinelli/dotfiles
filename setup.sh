#!/bin/sh
CWD=$(pwd)

#Setup Vim with Vundle
mkdir -p .vim/bundle
ln -sv $CWD/.vim $HOME
if ! [ -d .vim/bundle/Vundle.vim ]; then
	git clone git@github.com:gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
fi
vim +BundleInstall +qall

#Vim config
ln -sv $CWD/.vimrc $HOME

#Zsh config
ln -sv $CWD/.zshrc $HOME

#Tmux config
ln -sv $CWD/.tmux.conf $HOME

set term=xterm-256color
set nocompatible

" Vundle Plugins
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'edkolev/tmuxline.vim'

call vundle#end()
filetype plugin indent on 

" Appearance
set background=light
set title
syntax on
colorscheme solarized

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Enable mouse and backspace
set mouse=a
set bs=2

" Enable standard short-cut keys 
map <C-a> GVgg				" select all
map <C-n> :enew				" open new tab
map <C-t> :tabnew <Enter>

" Syntax highlighting


" Text
set number
set wrap					" wrap text
set linebreak				" don't wrap text in the middle of a word

" Faster up/down movement
map <C-j> 10j
map <C-k> 10k

" Jump to the last position when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	\| exe "normal g'\"" | endif
endif

" Indent
set autoindent				" always set autoindenting on
set smartindent				" use smart indent if there is no indent file
set tabstop=4				" <tab> inserts 4 spaces 
set softtabstop=4			" <BS> over an autoindent deletes all spaces.

" Reading and Writing
set autowriteall

" Folding
set foldmethod=indent
set foldlevel=99

" Status line
set laststatus=2
let g:airline_powerline_fonts = 1

" Searching
set ignorecase


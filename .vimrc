set term=xterm-256color
set nocompatible

" Vundle Plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" IDE features
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Valloric/YouCompleteMe'

" Visuals
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'edkolev/tmuxline.vim'

" Editing
Plugin 'tpope/vim-surround'

" Navigation
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Lokaltog/vim-easymotion'

" Python
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'nvie/vim-flake8'
Plugin 'alfredodeza/pytest.vim'

" Javascript
Plugin 'marijnh/tern_for_vim'

call vundle#end()
filetype plugin indent on

" Appearance
set background=light
set title
syntax on
colorscheme solarized

" Normal copy behaviour
set clipboard=unnamed

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Enable mouse and backspace
set mouse=a
set bs=2

" Enable standard short-cut keys
map <C-a> GVgg				" select all
map <C-n> :enew				" open new tab
map <C-t> :tabnew <Enter>

" Easymotion 2-character search notion
nmap s <Plug>(easymotion-s2)

" Easymotion better coloring of cursor
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" Easier split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Allow jumping to definitions in python
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Ignore filetypes
set wildignore+=*.pyc,*.swp,*.egg

" Text
set number
set wrap					" wrap text
set linebreak				" don't wrap text in the middle of a word

" Jump to the last position when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	\| exe "normal g'\"" | endif
endif

" Indent
set autoindent				" always set autoindenting on
set smartindent				" use smart indent if there is no indent file

" Default tab configuration
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" Gundo keybinding
nnoremap <F5> :GundoToggle<CR>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Reading and Writing
set autowriteall

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
:match ExtraWhitespace /\s\+$\| \+\ze\t/

" Folding
set foldmethod=indent
set foldlevel=99

" Keep buffers hidden instead of closing them
set hidden

" Status line
set laststatus=2
let g:airline_powerline_fonts = 1

" Searching
set ignorecase

" Python support with YCM
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

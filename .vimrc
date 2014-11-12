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
" Plugin 'majutsushi/tagbar'
" Plugin 'airblade/vim-gitgutter'

" Visuals
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'

" Editing
Plugin 'tpope/vim-surround'

" Navigation
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mileszs/ack.vim'

" Python
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'andviro/flake8-vim'
" Plugin 'alfredodeza/pytest.vim'

" Go
Plugin 'fatih/vim-go'
"Plugin 'jstemmer/gotags'

" Javascript
Plugin 'marijnh/tern_for_vim'

" Docker
Plugin 'honza/dockerfile.vim'

" Markdown
Plugin 'tpope/vim-markdown'

call vundle#end()
filetype plugin indent on

" Appearance
let base16colorspace=256  " Access colors present in 256 colorspace
set title
colorscheme base16-default
set background=dark
syntax on

" Normal copy behaviour
set clipboard=unnamed

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Autocorrection
set spell spelllang=en_us

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
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }


nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Ignore filetypes
set wildignore+=*.pyc,*.swp,*.egg,node_modules,.git

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
set smartindent				" use smart indent if there is no indent file

" Default tab configuration
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" Gundo keybinding
nnoremap <F5> :GundoToggle<CR>

" Tagbar toggle
nmap <F8> :TagbarToggle<CR>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Reading and Writing
set autowriteall

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
:match ExtraWhitespace /\s\+$\| \+\ze\t/

" Don't move on linewise basis
nmap j gj
nmap k gk

" Folding
set foldmethod=indent
set foldlevel=99

" Keep buffers hidden instead of closing them
set hidden

" Status line
set laststatus=2
let g:airline_powerline_fonts = 1

" Better pasting
set pastetoggle=<F10

" Go back to last buffer
nmap <C-e> :e#<CR>

" Searching
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" Get SASS omni completion to work
autocmd BufNewFile,BufRead *.scss set ft=scss.css

" Highlight excess chars for Python
augroup vimrc_autocmds
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END

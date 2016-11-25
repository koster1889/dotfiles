set nocompatible

set timeoutlen=500
set backspace=indent,eol,start
syntax on

set hlsearch
set expandtab
set incsearch
set showmatch

set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/backup/ 
"set nobackup

set ruler
set tabstop=4
set shiftwidth=4
set shiftwidth=4
set autoindent
" Ignore case, unless you use case(?)
"set smartcase

" Map ctrl+r/l arrow -> word forward/word backward
map <ESC>[1;5C w
map <ESC>[1;5D b

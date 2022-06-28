set nocompatible
filetype plugin on

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

set number
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



call plug#begin()

Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tabnine/YouCompleteMe.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'

Plug 'vim/killersheep'

" Initialize plugin system
call plug#end()

" plugin config
" Seriously? Cant map C-S-n?
map <C-k> :NERDTreeToggle<CR>
map <C-n> :Files<CR>
map <C-a> :Ag<CR>
:highlight SignColumn guibg=darkgrey


" end plugin config


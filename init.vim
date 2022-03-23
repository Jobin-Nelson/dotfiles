syntax on 
set noerrorbells visualbell t_vb=
set mouse=a
set clipboard=unnamed
set nocompatible
set showcmd
set ignorecase
set smartcase
set scrolloff=8
set splitbelow splitright
set number relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set formatoptions-=cro
set smartindent
set nowrap
set path+=**
set wildmenu
set incsearch
set nohlsearch

let mapleader=" "

nnoremap <leader>so :source $HOME/.vimrc<CR>
nnoremap <f5> <esc>:w<CR>:!python %<CR>
nnoremap <f6> <esc>:w<CR>:!node %<CR>
map Q <Nop>

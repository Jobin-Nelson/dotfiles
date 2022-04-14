syntax on 
set noerrorbells visualbell t_vb=
set noswapfile
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
set formatoptions-=c formatoptions-=r formatoptions-=o
set smartindent
set nowrap
set path+=**
set wildmenu
set incsearch
set nohlsearch

let mapleader=" "

nnoremap <leader>so :source $HOME/.vimrc<CR>
autocmd filetype python nnoremap <F5> :w <bar> !python %<CR>
autocmd filetype javascript nnoremap <F5> :w <bar> !node %<CR>
map Q <Nop>

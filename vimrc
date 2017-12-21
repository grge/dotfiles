" Standard options and settings
" --------------------------------

set autoindent
set nocompatible
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set hlsearch
set number

" Custom mappings
" --------------------------------

let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-h> <c-w>h 
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
inoremap jk <esc>

" vim-plug is probably the best among many options
" https://vi.stackexchange.com/questions/388/what-is-the-difference-between-the-vim-plugin-managers

call plug#begin()

Plug 'gmarik/Vundle.vim'

" Other plugins
" --------------------------------

Plug 'scrooloose/syntastic'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
Plug 'ervandew/supertab' 

Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-classpath'

Plug 'kien/ctrlp.vim' 
" <c-p>

Plug 'tpope/vim-commentary' 
" gc<MOTION> 

Plug 'tpope/vim-speeddating' 
" <c-A> and <c-X> : 1997-08-29

" Colorscheme plugins
" --------------------------------

Plug 'tpope/vim-vividchalk'
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'

call plug#end()

syntax enable
filetype plugin indent on

let g:solarized_termcolors=256
set background=dark
colorscheme jellybeans

" Standard options and settings
" --------------------------------

set nocompatible
set t_Co=256
set tabstop=4
set smarttab
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


" Vundle (plugin manager) set up
" --------------------------------

filetype plugin indent on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
syntax enable

" Other plugins
" --------------------------------

Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'mhinz/vim-startify'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ervandew/supertab' 
Bundle 'scrooloose/nerdtree' 
Bundle 'jistr/vim-nerdtree-tabs'

Bundle 'vim-scripts/ZoomWin'
" <c-w>o zooms in/out on current window

Bundle 'mattn/zencoding-vim' 
" <c-y>, 

Bundle 'kien/ctrlp.vim' 
" <c-p>

Bundle 'tpope/vim-commentary' 
" gc<MOTION> 

Bundle 'tpope/vim-speeddating' 
" <c-A> and <c-X> : 1997-08-29


" Colorscheme plugins
" --------------------------------

Bundle 'tpope/vim-vividchalk'
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'

let g:solarized_termcolors=256
set background=dark
colorscheme jellybeans
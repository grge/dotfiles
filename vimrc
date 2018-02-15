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
set cc=80

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
" 1. $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 2. :PluginInstall

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


:autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

Plugin 'gmarik/Vundle.vim'

" Other plugins
" --------------------------------

" Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ervandew/supertab' 
Plugin 'ivalkeen/vim-postgres'

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'

Plugin 'kien/ctrlp.vim' 

Plugin 'tpope/vim-commentary' 
" gc<MOTION> 

Plugin 'tpope/vim-speeddating' 
Plugin 'posva/vim-vue'
" <c-A> and <c-X> : 1997-08-29

" Colorscheme plugins
" --------------------------------

Plugin 'tpope/vim-vividchalk'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()

syntax enable
filetype plugin indent on

" let g:solarized_termcolors=256
set background=dark
colorscheme jellybeans

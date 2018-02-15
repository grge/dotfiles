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

:autocmd FileType python nnoremap <C-b> :exec '!python' shellescape(@%, 1)<cr>

" vim-plug is probably the best among many options
" https://vi.stackexchange.com/questions/388/what-is-the-difference-between-the-vim-plugin-managers

call plug#begin()

" General plugins
" Plug 'scrooloose/syntastic'
Plug 'tpope/vim-endwise'
Plug 'Lokaltog/vim-easymotion'
Plug 'ervandew/supertab' 
Plug 'tpope/vim-commentary' " gc<MOTION> 
Plug 'tpope/vim-speeddating' " <c-A> and <c-X> : 1995-08-28
Plug 'kien/ctrlp.vim' " <c-p>
Plug 'tpope/vim-fugitive'

Plug 'posva/vim-vue'

" " Python
" Plug 'vim-scripts/python.vim'
" " Plug 'tmhedberg/SimpylFold'
" let g:SimpylFold_docstring_preview = 1

" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
map <C-n> :NERDTreeToggle<CR>

" Clojure 
" Plug 'tpope/vim-classpath'
" Plug 'guns/vim-clojure-static'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-salve'
" Plug 'tpope/vim-fireplace'

" Colorschemes
Plug 'tpope/vim-vividchalk'
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'

call plug#end()

syntax enable
filetype plugin indent on


let g:solarized_termcolors=256
set background=dark
colorscheme jellybeans

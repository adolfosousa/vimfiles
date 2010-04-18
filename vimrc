colorscheme emacs

set nocompatible "This must be first, because it changes other options as a side effect
set showcmd
set showmode
set browsedir=current
set vb
set nu
set ruler
set expandtab
set autoread
set hlsearch
set ignorecase

set backspace=indent,eol,start
set history=1000
set sts=2
set sw=2
set laststatus=2
set tabstop=6
set numberwidth=2
set cmdheight=2
set lines=999
set columns=999
set listchars=tab:▸\ ,eol:¬
set scrolloff=3
set tags=./tags;

syntax on
filetype plugin indent on

:nma ; :
nmap <leader>l :set list!<CR>
map <leader>e :Explore<CR>
map <F7> :set invnumber<CR>
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

if has("gui_running") 
  set cursorline
  set mousehide
  set guifont=Monaco:h14
  set guitablabel=(%N%M)\ %f
  set helplang=en
  set linespace=-5
  set mouse=a
  set termencoding=utf-8
  set guioptions=egmrt
  map <D-T> :CommandT<CR>
endif

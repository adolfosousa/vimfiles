colorscheme emacs
set nocompatible "This must be first, because it changes other options as a side effect
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set sts=2
set sw=2
set browsedir=current
set listchars=tab:▸\ ,eol:¬
set vb
set lines=999
set columns=999
set nu
set laststatus=2
set ruler
set expandtab 
set tabstop=2
syntax on
filetype plugin indent on
nmap <leader>l :set list!<CR>
map <F7> :set invnumber<CR>

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

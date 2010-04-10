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
endif

if has("gui_macvim")
  map <D-T> :CommandT<CR>
endif

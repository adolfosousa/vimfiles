colorscheme emacs

set nocompatible "This must be first, because it changes other options as a side effect
set showcmd
set showmode
set browsedir=current
set vb
set nu
set ruler "show the cursor position all the time
set expandtab
set autoread
set hlsearch
set ignorecase
set autoindent
set ignorecase smartcase

set backspace=indent,eol,start
set history=1000
set sts=2
set sw=2
set laststatus=2 "always show status line
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
map  <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map  <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map  <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>
map  <F7> :set invnumber<CR>
map  <Leader>c :TComment<CR>
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
map  <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map  <C-t> <esc>:tabnew<CR>
nmap <leader>l :set list!<CR>
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
endif

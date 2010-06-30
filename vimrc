colorscheme emacs

set nocompatible " this must be first, because it changes other options as a side effect
set showcmd
set showmode
set vb
set nu
set ruler " show the cursor position all the time
set autoread
set hlsearch
set ignorecase
set autoindent
set ignorecase smartcase
set hidden  " treat hidden buffers more liberally
set visualbell t_vb= "disable visual bell

set backspace=indent,eol,start
set history=1000
set ts=2 sts=2 sw=2 expandtab " tabstop (width of tab) softtabstop shiftwidth expandtab (spaces in place of tabs)
set laststatus=2 " always show status line
set numberwidth=2
set cmdheight=2
set browsedir=current
set listchars=tab:▸\ ,eol:¬ " invisible chars
set tags=./tags; " tells vim about the tags file

syntax on
filetype plugin indent on

"necessary on some Linux distros for pathogen to properly load bundles
filetype off
"load pathogen managed plugins
call pathogen#runtime_append_all_bundles()

:nma ; :
map  <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map  <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map  <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>
map  <Leader>c :TComment<CR> " to comment a line
map  <Leader>/ :noh<CR> " to clear search highlights
map  <F7> :set invnumber<CR> " to show line numbers
map  <F5> :e!<CR> " to read file from disk
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
map  <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map  <C-t> <esc>:tabnew<CR>
nmap <leader>l :set list!<CR>
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l
map <D-S-]> gt
map <D-S-[> gT
map <D-S-Right> gt
map <D-S-Left> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

" disabling arrow keys 
" noremap  <Up> ""
" noremap! <Up> <Esc>
" noremap  <Down> ""
" noremap! <Down> <Esc>
" noremap  <Left> ""
" noremap! <Left> <Esc>
" noremap  <Right> ""
" noremap! <Right> <Esc>

"map to CommandT TextMate style finder
nnoremap <leader>t :CommandT<CR>
let g:CommandTMaxHeight=7
"let g:CommandTMatchWindowAtTop=1
"map <D-t> :CommandT<CR>

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
  set lines=999
  set columns=999
endif

if has("autocmd") " only do this part when compiled with support for autocommands
  filetype on " enable file type detection

  " syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " treat .rss and .atom files as XML
  autocmd BufNewFile,BufRead *.rss, *.atom setfiletype xml

  " strip trailing spaces before saving
  autocmd BufWritePre *.rb,*.py,*.js,*.html,*.css,*.yaml,*.xml :call <SID>StripTrailingWhitespaces()
endif

function! <SID>StripTrailingWhitespaces()
  " preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  %s/\s\+$//e
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

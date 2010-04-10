"Use Vim settings, rather then Vi settings (much better!)
"This must be first, because it changes other options as a side effect
set nocompatible
set backspace=indent,eol,start  "allow backspacing over everything in insert mode
set history=1000  "store lots of :cmdline history
set showcmd  "show incomplete cmds down the bottom
set showmode  "show current mode down the bottom
set nu
set sts=2
set sw=2
colorscheme emacs

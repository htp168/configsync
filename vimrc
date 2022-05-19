set nocompatible
set backspace=indent,eol,start
set textwidth=0
set nobackup
set history=60
set ruler
syntax on
filetype plugin on
set showcmd
set showmatch
set ignorecase
set incsearch
set background=dark
set autoindent

set number
set hlsearch
set cursorline
set wildmenu
set encoding=utf-8

noremap i k
noremap k j
noremap j h
noremap sl :split<CR>
noremap vl :vsplit<CR>
noremap fs :w<CR>
noremap ss :w!<CR>
noremap fq :q<CR>
noremap qq :q!<CR>
noremap wq :wq!<CR>
noremap zz ZZ
noremap fe :e<CR>
noremap ee :e!<CR>
noremap <C-k> <C-e>
noremap <C-i> <C-y>
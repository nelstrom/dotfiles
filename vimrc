" vim: nowrap fdm=marker
set nocompatible
let mapleader = ","
" Load plugins that ship with Vim {{{1
runtime macros/matchit.vim
runtime ftplugin/man.vim

" Load bundled plugins {{{1
call pathogen#infect()
call pathogen#helptags()

" Behaviour {{{1
set backspace=indent,eol,start
set history=50
set incsearch
set visualbell t_vb=
set hidden
set nojoinspaces
set nrformats=
if has('mouse')
  " Don't want the mouse to work in insert mode.
  set mouse=nv
endif

" Tab-completion in command-line mode
set wildmode=full
set wildmenu
set wildignore=*.pdf,*.fo,*.xml
set suffixes=.otl

" Appearance {{{1
set ruler
set showcmd
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set number
set cursorline
" When the terminal has colors, enable syntax+search highlighting
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Indentation {{{1
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Disable swapfile and backup {{{1
set nobackup
set noswapfile
" }}}

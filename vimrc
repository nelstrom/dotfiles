" vim: nowrap fdm=marker
set nocompatible
let mapleader = ","
" Load plugins that ship with Vim {{{1
runtime macros/matchit.vim
runtime ftplugin/man.vim

" Load bundled plugins {{{1
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Behaviour {{{1
set backspace=indent,eol,start
set history=50
set incsearch
set visualbell t_vb=
set hidden
set nojoinspaces
set wildmode=longest,list
set nrformats=
if has('mouse')
  set mouse=a
endif

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

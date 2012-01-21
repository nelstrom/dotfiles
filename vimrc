" vim: nowrap fdm=marker
set nocompatible

" Activate plugins that ship with Vim
runtime macros/matchit.vim
runtime ftplugin/man.vim

" Manage plugins
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set backspace=indent,eol,start

if has('mouse')
  set mouse=a
endif

" When the terminal has colors, enable syntax+search highlighting
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set history=50
set ruler
set showcmd
set incsearch
set visualbell t_vb=
set number
set cursorline
set hidden
set nojoinspaces
set listchars=tab:▸\ ,eol:¬
set wildmode=longest,list
set nrformats=
set laststatus=2

" Indentation preferences
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Disable swapfile and backup
set nobackup
set noswapfile

let mapleader = ","

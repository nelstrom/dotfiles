" Folding cheet sheet
" zR    open all folds
" zM    close all folds
" za    toggle fold at cursor position
" zj    move down to start of next fold
" zk    move up to end of previous fold
" vim: nowrap fdm=marker

" Manage plugins. {{{1
runtime macros/matchit.vim
runtime ftplugin/man.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" pathogen dynamically sets the runtimepath, like this:
" set runtimepath+=~/.vim/bundle/vim-abolish/

" An example for a vimrc file. {{{1
"
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else
  set autoindent		" always set autoindenting on
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Preferences {{{1
set visualbell t_vb=
set number
set cursorline
set hidden
set nojoinspaces
set listchars=tab:▸\ ,eol:¬
set wildmode=longest,list
set nrformats=
"set spelllang=en_gb

" Indentation preferences
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Disable swapfile and backup
set nobackup
set noswapfile

" Toggles & Switches (Leader commands) {{{1
let mapleader = ","
nmap <silent> <leader>l :set list!<CR>
nmap <silent> <leader>w :set wrap!<CR>
nmap <silent> <buffer> <leader>s :set spell!<CR>
nmap <silent> <leader>n :silent :nohlsearch<CR>
command! -nargs=* Wrap set wrap linebreak nolist
command! -nargs=* Maxsize set columns=1000 lines=1000
" CTags {{{1
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let tlist_markdown_settings='markdown;h:Headings'
let Tlist_Show_One_File=1
nmap <Leader>/ :TlistToggle<CR>

" Mappings {{{1

" Shortcuts for visual selections {{{2
nmap gV `[v`]
" http://stackoverflow.com/questions/6228079/remove-newlines-from-a-register-in-vim/6235707#6235707
nnoremap <expr> gV    "`[".getregtype(v:register)[0]."`]"

" Substitute command repetition {{{2
nnoremap & :&&<Enter>
xnoremap & :&&<Enter>

" Status line {{{1
" Good article on setting a statusline:
"   http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
" Always show the status line (even if no split windows)
set laststatus=2

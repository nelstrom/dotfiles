" Folding cheet sheet 
" zR    open all folds
" zM    close all folds
" za    toggle fold at cursor position
" zj    move down to start of next fold
" zk    move up to end of previous fold
" Manage plugins. {{{1
runtime macros/matchit.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
let g:GetLatestVimScripts_allowautoinstall=1
" An example for a vimrc file. {{{1
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Jul 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

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

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

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

endif " has("autocmd")

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
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hidden
set listchars=tab:▸\ ,eol:¬
"set spelllang=en_gb
" Put swap files in /tmp file
set backupdir=~/tmp
set directory=~/tmp
if has("autocmd")
  autocmd FileType html,css,scss,ruby setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType markdown setlocal wrap linebreak nolist
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  ".pml is automatically set to 'promela'. Override to use XML
  " lifted from: https://github.com/tpope/vim-markdown/blob/34e28b3f6f6d702ff2963b8196eccae9344ed4bc/ftdetect/markdown.vim
  autocmd BufNewFile,BufRead *.pml
        \ if &ft =~# '^\%(promela\)$' |
        \   set ft=xml |
        \ else |
        \   setf xml |
        \ endif

endif

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
let tlist_xml_settings='pml;t:Titles;a:Anchors'
let tlist_markdown_settings='markdown;h:Headings'
nmap <Leader>tl :TlistToggle<CR>

" Mappings {{{1
" Speed up buffer switching {{{2
map <C-k> <C-W>k
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l
" Speed up tab switching {{{2
map <D-S-]> gt
map <D-S-[> gT
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
" Shortcuts to make it easier to explore wrapped lines {{{2
" These come in handy when the following settings are enabled:
"     :set linebreak wrap nolist
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^
" Shortcuts for opening file in same directory as current file {{{2
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
" Shortcuts for visual selections {{{2
nmap gV `[v`]
" TextObject tweaks {{{1
nnoremap viT vitVkoj
nnoremap vaT vatV
" Insert mode mappings {{{1
" emacs style jump to end of line
imap <C-e> <C-o>A
imap <C-a> <C-o>I
" Open line above (ctrl-shift-o much easier than ctrl-o shift-O)
imap <C-Enter> <C-o>o
imap <C-S-Enter> <C-o>O
" Easily modify vimrc {{{1
nmap <leader>v :e $MYVIMRC<CR>
" http://stackoverflow.com/questions/2400264/is-it-possible-to-apply-vim-configurations-without-restarting/2400289#2400289
if has("autocmd")
  augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
  augroup END
endif

" Custom commands and functions {{{1
" Show syntax highlighting groups for word under cursor {{{2
" Tip: http://stackoverflow.com/questions/1467438/find-out-to-which-highlight-group-a-particular-keyword-symbol-belongs-in-vim
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
" Wipe all buffers which are not active (i.e. not visible in a window/tab) {{{2
" http://stackoverflow.com/questions/2974192/how-can-i-pare-down-vims-buffer-list-to-only-include-active-buffers
" http://stackoverflow.com/questions/1534835/how-do-i-close-all-buffers-that-arent-shown-in-a-window-in-vim
command! -nargs=* Only call CloseHiddenBuffers()
function! CloseHiddenBuffers()
  " figure out which buffers are visible in any tab
  let visible = {}
  for t in range(1, tabpagenr('$'))
    for b in tabpagebuflist(t)
      let visible[b] = 1
    endfor
  endfor
  " close any buffer that are loaded and not visible
  let l:tally = 0
  for b in range(1, bufnr('$'))
    if bufloaded(b) && !has_key(visible, b)
      let l:tally += 1
      exe 'bw ' . b
    endif
  endfor
  echon "Deleted " . l:tally . " buffers"
endfun

" Set tabstop, softtabstop and shiftwidth to the same value {{{2
" From http://vimcasts.org/episodes/tabs-and-spaces/
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
 
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    end
  finally
    echohl None
  endtry
endfunction

" Strip trailing whitespaces  {{{2
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>

" Search for current visual selection with */# {{{2
" Tip tip from: http://amix.dk/blog/viewEntry/19334
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
" Swap words in a single substitution command {{{2
" http://stackoverflow.com/questions/765894/can-i-substitute-multiple-items-in-a-single-regular-expression-in-vim-or-perl/766093#766093
function! Refactor(dict) range
  execute a:firstline . ',' . a:lastline .  's/\C\<\%(' . join(keys(a:dict),'\|'). '\)\>/\='.string(a:dict).'[submatch(0)]/ge'
endfunction
command! -range=% -nargs=1 Refactor :<line1>,<line2>call Refactor(<args>)

" Running :Refactor {'quick':'slow', 'lazy':'energetic'}  will change the following text:
"    The quick brown fox ran quickly next to the lazy brook.
"into:
"    The slow brown fox ran slowly next to the energetic brook.

" TODO: create a :Swap command, which turns:
"    :Swap(portrait,landscape)
" into
"    :Refactor {'portrait':'landscape', 'landscape':'portrait'}

"Basically you press * or # to search for the current selection
"then 'n' should search forward, 'N' should search backwards.
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>
vnoremap <silent> gv :call VisualSearch('gv')<CR>

" Status line {{{1
" Good article on setting a statusline:
"   http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
" Always show the status line (even if no split windows)
set laststatus=2
" Mappings for a recovering TextMate user {{{1
" Indentation {{{2
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Commenting {{{2
" requires NERDCommenter plugin
vmap <D-/> ,c<space>gv
map <D-/> ,c<space>

" Move selection {{{2
  " Move current line down/up
  map <C-Down> ]e
  map <C-Up> [e
  " Move visually selected lines down/up
  vmap <C-Down> ]egv
  vmap <C-Up> [egv
" Move visual selection back/forwards
set ww+=<,>
vmap <C-Left> x<Left>P`[v`]
vmap <C-Right> x<Right>P`[v`]
" Configure plugins {{{1
" Gundo.vim {{{2
map <Leader>u :GundoToggle<CR>

" TextObject customizations {{{2
" Entire text object {{{3
" Map text-object for entire buffer to `ia` and `aa`.
let g:textobj_entire_no_default_key_mappings = 1
xmap aa  <Plug>(textobj-entire-a)
omap aa  <Plug>(textobj-entire-a)
xmap ia  <Plug>(textobj-entire-i)
omap ia  <Plug>(textobj-entire-i)
" }}}

function! PmlFolds()
  if match(getline(v:lnum), "<sect1") >= 0
    return ">1"
  elseif match(getline(v:lnum), "</sect1") >= 0
    return "<1"
  elseif match(getline(v:lnum), "<sect2") >= 0
    return ">2"
  elseif match(getline(v:lnum), "</sect2") >= 0
    return "<2"
  elseif match(getline(v:lnum), "<sect3") >= 0
    return ">3"
  elseif match(getline(v:lnum), "</sect3") >= 0
    return "<3"
  else
    return "="
  endif
endfunction
function! PmlFoldText()
  " default:
  " --- 52 lines: <sect2>---------
  " Want:
  " 1: Vim's spell checker                                   52 lines
  let foldedlinecount = v:foldend - v:foldstart
  let line = getline(v:foldstart)
  let title = "<Untitled>"
  let counter = 0
  let linenum = v:foldstart
  while title == "<Untitled>" && counter < 10
    let line = getline( linenum )
    let sectTitle = matchstr(line, "<title>\\zs.\\+\\ze</title>")
    if sectTitle != ""
      let title = sectTitle
    endif
    let counter = counter + 1
    let linenum = linenum + 1
  endwhile
  let leader = printf("%-10s", v:foldlevel)
  if v:foldlevel == 1
    let leader = printf("%-2s%-48s", v:foldlevel, title)
  elseif v:foldlevel == 2
    let leader = printf("%-4s%-46s", v:foldlevel, title)
  elseif v:foldlevel == 3
    let leader = printf("%-6s%-44s", v:foldlevel, title)
  end
  " TODO: figure out why example (:h fold-foldtext) uses v:folddashes:
  "   return v:folddashes . sub
  return printf("%s %6s lines", leader, foldedlinecount)
endfunction
autocmd BufNewFile,BufRead *.pml set foldmethod=expr
autocmd BufNewFile,BufRead *.pml setlocal foldexpr=PmlFolds()
autocmd BufNewFile,BufRead *.pml setlocal foldtext=PmlFoldText()

"  Modelines: {{{1
" vim: nowrap fdm=marker
" }}}

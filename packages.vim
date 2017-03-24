" minpac cheatsheet:
" To install or update plugins, use one of:
" :call minpac#update()
" :PackUpdate
" 
" To uninstall unused plugins, use one of:
" call minpac#clean()
" :PackClean
packadd minpac
packloadall

if has('nvim')
  let s:package_name = 'neo'
else
  let s:package_name = 'classic'
endif

call minpac#init({'package_name': s:package_name})

" minpac must have {'type': 'opt'} so that it can be loaded with
" `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('dsawardekar/riml.vim', {'type': 'opt'})

call minpac#add('tpope/vim-abolish')
call minpac#add('tpope/vim-characterize')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-ragtag')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-scriptease')
call minpac#add('tpope/vim-sleuth')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-tbone')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-projectionist')
call minpac#add('elzr/vim-json')
call minpac#add('godlygeek/tabular')

" Custom textobjects
call minpac#add('kana/vim-textobj-user')
call minpac#add('kana/vim-textobj-entire')
call minpac#add('kana/vim-textobj-indent')
call minpac#add('kana/vim-textobj-syntax')
call minpac#add('kana/vim-textobj-line')
call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('Julian/vim-textobj-variable-segment')
call minpac#add('bkad/CamelCaseMotion')
call minpac#add('b4winckler/vim-angry')

" Markdown
call minpac#add('tpope/vim-markdown')
call minpac#add('nelstrom/vim-markdown-folding')
call minpac#add('junegunn/vim-emoji', {'type': 'opt'})

" JavaScript
call minpac#add('pangloss/vim-javascript')

call minpac#add('nelstrom/vim-docopen')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-commentary')

call minpac#add('tommcdo/vim-exchange')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('szw/vim-g')
call minpac#add('kana/vim-smartinput')

" Colorschemes
call minpac#add('lifepillar/vim-solarized8', {'type': 'opt'})
call minpac#add('morhetz/gruvbox', {'type': 'opt'})

if has('nvim')
  call minpac#add('Shougo/denite.nvim')
  call minpac#add('machakann/vim-highlightedyank')
else
  call minpac#add('Shougo/unite.vim')
endif

" Handy commands:
command PackUpdate call minpac#update()
command PackClean call minpac#clean()

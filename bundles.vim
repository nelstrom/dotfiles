set nocompatible
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" General enhancements
Bundle 'tpope/vim-abolish.git'
Bundle 'tpope/vim-characterize.git'
Bundle 'tpope/vim-commentary.git'
Bundle 'tpope/vim-dispatch.git'
Bundle 'tpope/vim-eunuch.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-ragtag.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-scriptease.git'
Bundle 'tpope/vim-sensible.git'
Bundle 'tpope/vim-sleuth.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-tbone.git'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'tpope/vim-projectile.git'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'nelstrom/vim-docopen'
Bundle 'vim-scripts/prettyprint.vim.git'
" Bundle 'jayferd/ragel.vim.git'
Bundle 'mattn/gist-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Bundle 'leafo/moonscript-vim'
Bundle 'kchmck/vim-coffee-script'

Bundle 'kien/ctrlp.vim.git'
" Bundle 'dsawardekar/portkey'
Bundle 'pangloss/vim-javascript.git'
Bundle 'elzr/vim-json'
Bundle 'godlygeek/tabular.git'
Bundle 'kongo2002/vim-space.git'
Bundle 'kana/vim-vspec.git'
Bundle 'nelstrom/vim-qargs.git'
Bundle 'vim-scripts/vimwiki.git'

" Custom textobjects
Bundle 'kana/vim-textobj-user.git'
Bundle 'kana/vim-textobj-entire.git'
Bundle 'kana/vim-textobj-indent.git'
Bundle 'kana/vim-textobj-syntax.git'
Bundle 'kana/vim-textobj-line.git'
Bundle 'nelstrom/vim-textobj-rubyblock.git'

" Colorschemes
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'nelstrom/vim-mac-classic-theme.git'
Bundle 'nelstrom/vim-blackboard.git'

" Ruby enhancements
Bundle 'tpope/vim-bundler.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'thoughtbot/vim-rspec'

" Markdown
Bundle 'tpope/vim-markdown.git'
Bundle 'nelstrom/vim-markdown-folding.git'

" Riml
Bundle 'dsawardekar/riml.vim'

" Experimental
" Bundle 'svermeulen/vim-easyclip'
Bundle 'tommcdo/vim-exchange'
Bundle 'airblade/vim-gitgutter'

filetype plugin indent on

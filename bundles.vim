set nocompatible
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" General enhancements
Plugin 'tpope/vim-abolish.git'
Plugin 'tpope/vim-characterize.git'
Plugin 'tpope/vim-commentary.git'
Plugin 'tpope/vim-dispatch.git'
Plugin 'tpope/vim-eunuch.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-ragtag.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-scriptease.git'
Plugin 'tpope/vim-sleuth.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-tbone.git'
Plugin 'tpope/vim-unimpaired.git'
Plugin 'tpope/vim-projectionist.git'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'nelstrom/vim-docopen'
Plugin 'vim-scripts/prettyprint.vim.git'
" Plugin 'jayferd/ragel.vim.git'
Plugin 'mattn/gist-vim'
Plugin 'SirVer/ultisnips'
if !has('nvim')
  Plugin 'tpope/vim-sensible.git'
endif

Plugin 'leafo/moonscript-vim'
Plugin 'kchmck/vim-coffee-script'

" Plugin 'dsawardekar/portkey'
Plugin 'pangloss/vim-javascript.git'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular.git'
Plugin 'kongo2002/vim-space.git'
Plugin 'kana/vim-vspec.git'
Plugin 'nelstrom/vim-qargs.git'
" Plugin 'vim-scripts/vimwiki.git'
Plugin 'neomake/neomake'

Plugin 'marijnh/tern_for_vim'

" Custom textobjects
Plugin 'kana/vim-textobj-user.git'
Plugin 'kana/vim-textobj-entire.git'
Plugin 'kana/vim-textobj-indent.git'
Plugin 'kana/vim-textobj-syntax.git'
Plugin 'kana/vim-textobj-line.git'
Plugin 'nelstrom/vim-textobj-rubyblock.git'
Plugin 'Julian/vim-textobj-variable-segment'
Plugin 'bkad/CamelCaseMotion'
Plugin 'b4winckler/vim-angry'

" Colorschemes
Plugin 'lifepillar/vim-solarized8'
Plugin 'nelstrom/vim-mac-classic-theme.git'
Plugin 'nelstrom/vim-blackboard.git'

" Ruby enhancements
Plugin 'tpope/vim-bundler.git'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-rake.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'thoughtbot/vim-rspec'

" Markdown
Plugin 'tpope/vim-markdown.git'
Plugin 'nelstrom/vim-markdown-folding.git'
Plugin 'junegunn/vim-emoji'

" Riml
Plugin 'dsawardekar/riml.vim'

" Ember
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'AndrewRadev/ember_tools.vim'

" Haskell
Plugin 'urso/haskell_syntax.vim'

" PML
Plugin 'nelstrom/vim-pml'

" Neovim
if has('nvim')
  Plugin 'kassio/neoterm'
  Plugin 'Shougo/denite.nvim'
  Plugin 'Shougo/neomru.vim'
endif

" Experimental
" Plugin 'svermeulen/vim-easyclip'
Plugin 'tommcdo/vim-exchange'
Plugin 'airblade/vim-gitgutter'
Plugin 'szw/vim-g'

Plugin 'nelstrom/vim-subrip'

call vundle#end()
filetype plugin indent on

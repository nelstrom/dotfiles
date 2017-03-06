call plug#begin('~/.vim/plugged')

" General enhancements
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-projectionist'
Plug 'nelstrom/vim-visual-star-search'
Plug 'nelstrom/vim-docopen'
Plug 'vim-scripts/prettyprint.vim'
" Plug 'jayferd/ragel.vim'
Plug 'mattn/gist-vim'
Plug 'SirVer/ultisnips'
if !has('nvim')
  Plug 'tpope/vim-sensible'
endif

Plug 'leafo/moonscript-vim'

" Plug 'dsawardekar/portkey'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'godlygeek/tabular'
Plug 'kongo2002/vim-space'
Plug 'kana/vim-vspec'
Plug 'nelstrom/vim-qargs'
" Plug 'vim-scripts/vimwiki'
Plug 'neomake/neomake'

Plug 'marijnh/tern_for_vim'

" Custom textobjects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-line'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'bkad/CamelCaseMotion'
Plug 'b4winckler/vim-angry'

" Colorschemes
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'nelstrom/vim-blackboard'

" Ruby enhancements
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'vim-ruby/vim-ruby'
Plug 'thoughtbot/vim-rspec'

" Markdown
Plug 'tpope/vim-markdown'
Plug 'nelstrom/vim-markdown-folding'
Plug 'junegunn/vim-emoji'

" Riml
Plug 'dsawardekar/riml.vim'

" Ember
" Plug 'mustache/vim-mustache-handlebars'
Plug 'AndrewRadev/vim-mustache-handlebars'
Plug 'AndrewRadev/ember_tools.vim'

" Haskell
Plug 'urso/haskell_syntax.vim'

" PML
Plug 'nelstrom/vim-pml'

" Neovim
if has('nvim')
  Plug 'kassio/neoterm'
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/neomru.vim'
endif

" Experimental
" Plug 'svermeulen/vim-easyclip'
Plug 'tommcdo/vim-exchange'
Plug 'airblade/vim-gitgutter'
Plug 'szw/vim-g'
Plug 'kana/vim-smartinput'

Plug 'nelstrom/vim-subrip'

call plug#end()

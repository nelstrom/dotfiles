" Source this file to auto-"correct" British spellings to their American
" equivalent:
"   
"     :source ~/.vim/spell/americanize.vim
" 
" The `:Abolish` command is provided by Tim Pope's abolish plugin:
"
"     http://github.com/tpope/vim-abolish
" 
" This is allows lowercase and titlecased abbreviations to be created in a
" single line:
"
"     :Abolish colour color
" 
" which is equivalent to manually creating the abbreviations:
"
"     :ia colour color
"     :ia Colour Color
"     :ia COLOUR COLOR
"

:Abolish behaviour behavior
:Abolish colour color

set background=light
highlight clear 
if exists("syntax_on")
  syntax reset 
endif
let g:colors_name = "Demo light"
" TODO: Override default 'TODO' colors

highlight Normal guibg=#FFE3F4 guifg=#111111
highlight CursorLine guibg=#FCF2F9
"highlight Folded guibg=#cc0000

highlight Todo guifg=#cc0000 guibg=NONE

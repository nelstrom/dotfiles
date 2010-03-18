set go-=T
set bg=dark
if has("gui_running")
    "set fuoptions=maxvert,maxhorz
    "au GUIEnter * set fullscreen
endif

if &background == "dark"
    hi normal guibg=black
endif
set guifont=Monaco:h12
colorscheme blackboard

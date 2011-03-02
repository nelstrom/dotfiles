set go-=T
set bg=dark

if &background == "dark"
    hi normal guibg=black
endif
set guifont=Monaco:h16
colorscheme mac_classic
if exists('*HexHighlight()')
  " http://www.vim.org/scripts/script.php?script_id=2937
  nmap <leader>h :call HexHighlight()<Return>
endif

" Do not use modal alert dialogs! (Prefer Vim style prompt.)
" http://stackoverflow.com/questions/4193654/using-vim-warning-style-in-gvim
set guioptions+=c

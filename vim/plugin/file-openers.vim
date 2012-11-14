" Shortcuts for opening file in same directory as current file {{{2
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Prompt to open file with same name, different extension
map <leader>er :e <C-R>=expand("%:r")."."<CR>

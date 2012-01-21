" http://stackoverflow.com/questions/6926034/creating-a-mapping-for-insert-mode-but-not-for-autocomplete-submode/6926691#6926691
inoremap <expr> <c-e> pumvisible() ? "\<c-e>" : "\<c-o>A"
inoremap <C-a> <C-o>I

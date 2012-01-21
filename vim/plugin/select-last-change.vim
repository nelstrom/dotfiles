nmap gV `[v`]
" http://stackoverflow.com/questions/6228079/remove-newlines-from-a-register-in-vim/6235707#6235707
nnoremap <expr> gV    "`[".getregtype(v:register)[0]."`]"

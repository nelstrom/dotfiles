" Show syntax highlighting groups for word under cursor
" Tip: http://stackoverflow.com/questions/1467438
nmap <Leader>m :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

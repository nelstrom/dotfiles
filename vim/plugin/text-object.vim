" Crude visualmode-only mappings for block level XML tags
nnoremap viT vitVkoj
nnoremap vaT vatV

" textobj-entire defines: ie/ae maps
" Instead, use:           ia/aa
let g:textobj_entire_no_default_key_mappings = 1
xmap aa  <Plug>(textobj-entire-a)
omap aa  <Plug>(textobj-entire-a)
xmap ia  <Plug>(textobj-entire-i)
omap ia  <Plug>(textobj-entire-i)

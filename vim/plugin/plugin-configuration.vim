" netrw.vim {{{1
let g:netrw_banner=0
" Fugitive.vim {{{1
if has("autocmd")

  " Auto-close fugitive buffers
  autocmd BufReadPost fugitive://* set bufhidden=delete

  " Navigate up one level from fugitive trees and blobs
  autocmd User fugitive
    \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
    \   nnoremap <buffer> .. :edit %:h<CR> |
    \ endif

endif

" Add git branch to statusline.
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Gundo.vim {{{1
map <Leader>u :GundoToggle<CR>

" Space.vim {{{1
let g:space_disable_select_mode=1
let g:space_no_search = 1

" Solarized {{{1
let g:solarized_menu=0
set background=light
silent! colorscheme solarized
if exists('*togglebg#map')
  call togglebg#map("<F5>")
endif

" Vim wiki {{{1
let g:vimwiki_menu=''

" vim: nowrap fdm=marker
" Ctlr-P {{{1
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0

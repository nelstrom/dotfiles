" vim: nowrap fdm=marker
source ~/dotfiles/bundles.vim
runtime ftplugin/man.vim

" Personal preferences not set by sensible.vim
set history=5000
set showcmd
set nojoinspaces
" set listchars=tab:▸\ ,eol:¬
set foldlevelstart=99
set noswapfile
if has('mouse')
  set mouse=nv
endif

" Colorscheme
set background=light
silent! colorscheme solarized

" Plugin configuration {{{1
" netrw.vim {{{2
let g:netrw_banner=0
" Don't show undo files in the explorer
let g:netrw_list_hide='\.un\~$'
" Vim-ruby {{{2
let ruby_fold=1
" Markdown {{{2
let g:markdown_fenced_languages = ['ruby', 'javascript']
" Solarized {{{2
let g:solarized_menu=0
if exists('*togglebg#map')
  call togglebg#map("<F5>")
endif
" Ctlr-P {{{2
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'find %s -type f'
" Ragel {{{2
let g:ragel_default_subtype='ruby'

" Mappings {{{1
" Override defaults {{{2
nnoremap Q <Nop>
" File opening {{{2
cnoremap <expr> %%  getcmdtype() == ':' ? fnameescape(expand('%:h')).'/' : '%%'

map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Prompt to open file with same name, different extension
map <leader>er :e <C-R>=expand("%:r")."."<CR>


" Fix the & command in normal+visual modes {{{2
nnoremap & :&&<Enter>
xnoremap & :&&<Enter>

" Strip trailing whitespace {{{2
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>

" Visual line repeat {{{2
xnoremap . :normal .<CR>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" Experimental mappings {{{2
nnoremap g" /\v<<C-r>"><CR>

" vim: nowrap fdm=marker
if !exists(':Denite')
  finish
endif

" User Interface {{{1
" Ex commands {{{2
command! -nargs=* Help Denite help -input=<args>
command! -nargs=* Buffer Denite buffer -input=<args>
command! -nargs=* Ls Denite buffer
command! -nargs=* Registers Denite register
command! -nargs=* Grep Denite grep -input=<args>
command! -nargs=* Line Denite line
command! -nargs=* Colorscheme Denite colorscheme

" Vim mappings {{{2
nnoremap <silent> <C-p> :<C-u>Denite
      \ `finddir('.git', ';') != '' ? 'file_rec/git' : 'file_rec'`<CR>

" Denite buffer mappings {{{2
call denite#custom#map(
      \ 'insert',
      \ '<C-n>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-p>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

" Configuration {{{1
" Ripgrep command on grep source {{{2
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
      \ ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" file_rec/git {{{2
call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])

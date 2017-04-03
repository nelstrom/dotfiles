" vim: nowrap fdm=marker
scriptencoding utf-8

source ~/dotfiles/packages.vim

" Personal preferences not set by sensible.vim
let g:mapleader=','
set history=5000
set showcmd
set nojoinspaces
set complete-=t
" set listchars=tab:▸\ ,eol:¬
set foldlevelstart=99
set noswapfile
if has('mouse')
  set mouse=nv
endif
set diffopt=filler,vertical
set ruler

" Define a group for autocommands
augroup vimrc
  autocmd!
augroup END

function! FormatprgLocal(filter)
  if !empty(v:char)
    return 1
  else
    let l:command = v:lnum.','.(v:lnum+v:count-1).'!'.a:filter
    echo l:command
    execute l:command
  endif
endfunction

if has('autocmd')
  augroup ragtag_filetypes
    autocmd!
    autocmd FileType markdown    call RagtagInit()
  augroup END
  let g:pandoc_pipeline  = 'pandoc --from=html --to=markdown'
  let g:pandoc_pipeline .= ' | pandoc --from=markdown --to=html'
  autocmd vimrc FileType html setlocal formatexpr=FormatprgLocal(pandoc_pipeline)
endif

" Colorscheme
set termguicolors
set background=light
silent! colorscheme solarized8_light

set hidden

" Plugin configuration {{{1
" netrw.vim {{{2
let g:netrw_banner=0
" Don't show undo files in the explorer
let g:netrw_list_hide='\.un\~$'
" neomake {{{2

let g:neomake_javascript_enabled_makers = ['eslint']
if exists(':Neomake')
  autocmd! vimrc BufWritePost * Neomake
endif

" if emoji#available()
"   let g:neomake_warning_sign = { 'text': emoji#for('exclamation') }
"   let g:neomake_error_sign   = { 'text': emoji#for('x') }
"   let g:neomake_info_sign    = { 'text': emoji#for('8ball') }
"   let g:neomake_message_sign = { 'text': emoji#for('pencil2') }
" endif

" syntastic {{{2
let g:syntastic_mode_map = {
      \ 'mode': 'passive',
      \ 'active_filetypes': [
      \   'javascript'
      \ ],
      \ 'passive_filetypes': [
      \   'html',
      \   'ruby'
      \ ]
      \ }
let g:syntastic_ruby_checkers=['bx rubocop', 'mri']
nnoremap ZS :SyntasticCheck<CR>
nnoremap ZT :SyntasticToggle<CR>

" Vim-ruby {{{2
" let ruby_fold=1
" Vim-rspec {{{2
map <Leader>t :w<bar>:call RunCurrentSpecFile()<CR>
map <Leader>s :w<bar>:call RunNearestSpec()<CR>
map <Leader>l :w<bar>:call RunLastSpec()<CR>
map <Leader>a :w<bar>:call RunAllSpecs()<CR>
let g:rspec_command = 'Dispatch rspec {spec}'
" Markdown {{{2
let g:markdown_fenced_languages = ['ruby', 'javascript']
" FIXME:
" Markdown files have foldmethod=syntax when both of these options are set:
" let ruby_fold=1
" let g:markdown_fenced_languages = ['ruby', 'javascript']
" to debug, run :verbose set foldmethod?
"
" Solarized8 {{{2
nnoremap  <leader>B :<c-u>exe "colors" (g:colors_name =~# "dark"
      \ ? substitute(g:colors_name, 'dark', 'light', '')
      \ : substitute(g:colors_name, 'light', 'dark', '')
      \ )<cr>

function! Solarized8Contrast(delta)
  let l:schemes = map(['_low', '_flat', '', '_high'], '"solarized8_".(&background).v:val')
  exe 'colors' l:schemes[((a:delta+index(l:schemes, g:colors_name)) % 4 + 4) % 4]
endfunction

nmap <leader>- :<c-u>call Solarized8Contrast(-v:count1)<cr>
nmap <leader>+ :<c-u>call Solarized8Contrast(+v:count1)<cr>
" Ctlr-P {{{2
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'find %s -type f'

" Denite {{{2
" vim/after/plugin/denite.vim
" Ragel {{{2
augroup ragel
  autocmd!
  autocmd BufNewFile,BufRead *.rl setfiletype ragel
augroup END
let g:ragel_default_subtype='ruby'

" Mappings and commands {{{1
" Override defaults {{{2
nnoremap Q <Nop>
command! -nargs=0 -bang Qa qall!
command! -nargs=0 -bang QA qall!
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
  let l:_s=@/
  let l:l = line('.')
  let l:c = col('.')
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=l:_s
  call cursor(l:l, l:c)
endfunction

nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>

" Visual line repeat {{{2
xnoremap . :normal .<CR>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo '@'.getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" Experimental mappings {{{2
nnoremap g" /\v<<C-r>"><CR>

command! Path :call EchoPath()
function! EchoPath()
  echo join(split(&path, ','), '\n')
endfunction

command! TagFiles :call EchoTags()
function! EchoTags()
  echo join(split(&tags, ','), '\n')
endfunction


" let g:EasyClipUseSubstituteDefaults = 1
" nmap <silent> gs <plug>SubstituteOverMotionMap
" nmap gss <plug>SubstituteLine
" xmap gs p

" let g:EasyClipUseCutDefaults = 0
" nmap x <Plug>MoveMotionPlug
" xmap x <Plug>MoveMotionXPlug
" nmap xx <Plug>MoveMotionLinePlug

nmap cp <Plug>TransposeCharacters
nnoremap  <Plug>TransposeCharacters xp
\:call repeat#set("\<Plug>TransposeCharacters")<CR>

" ember-cli {{{2
command! -nargs=* Ember :echo system('ember <args>')

if exists('*smartinput#define_rule')
  call smartinput#clear_rules()
  call smartinput#define_rule({
        \'at': '{\%#',
        \'char': '{',
        \'input': '{}}<Left><Left>',
        \'filetype': ['html.handlebars']
        \ })
  call smartinput#define_rule({
        \'at': '\%#}}',
        \'char': '}',
        \'input': '<Right><Right>',
        \'filetype': ['html.handlebars']
        \ })
  call smartinput#define_rule({
        \'at': '}}\%#',
        \'char': '}',
        \'input': '',
        \'filetype': ['html.handlebars']
        \ })
  call smartinput#define_rule({
        \'at': '{{\%#}}',
        \'char': '<BS>',
        \'input': '<BS><BS><Del><Del>',
        \'filetype': ['html.handlebars']
        \ })
  call smartinput#define_rule({
        \'at': '{{}}\%#',
        \'char': '<BS>',
        \'input': '<BS><BS><BS><BS>',
        \'filetype': ['html.handlebars']
        \ })
endif

augroup javascript
  autocmd!
  autocmd FileType javascript setlocal suffixesadd+=.debug.js,.js
augroup END

let g:mustache_operators=0

augroup emoji_complete
  autocmd!
  autocmd FileType markdown setlocal completefunc=emoji#complete
augroup END

if exists(':terminal')
  tnoremap <expr> <C-\><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

  autocmd vimrc TermOpen * nnoremap <buffer> I I<C-a>
  autocmd vimrc TermOpen * nnoremap <buffer> A A<C-e>
  autocmd vimrc TermOpen * nnoremap <buffer> C i<C-k>
  autocmd vimrc TermOpen * nnoremap <buffer> D i<C-k><C-\><C-n>
  autocmd vimrc TermOpen * nnoremap <buffer> cc i<C-e><C-u>
  autocmd vimrc TermOpen * nnoremap <buffer> dd i<C-e><C-u><C-\><C-n>
endif

" https://github.com/neovim/neovim/pull/2076#issuecomment-76998265
nnoremap <a-h> <c-w>h
nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
nnoremap <a-l> <c-w>l
vnoremap <a-h> <c-\><c-n><c-w>h
vnoremap <a-j> <c-\><c-n><c-w>j
vnoremap <a-k> <c-\><c-n><c-w>k
vnoremap <a-l> <c-\><c-n><c-w>l
inoremap <a-h> <c-\><c-n><c-w>h
inoremap <a-j> <c-\><c-n><c-w>j
inoremap <a-k> <c-\><c-n><c-w>k
inoremap <a-l> <c-\><c-n><c-w>l
cnoremap <a-h> <c-\><c-n><c-w>h
cnoremap <a-j> <c-\><c-n><c-w>j
cnoremap <a-k> <c-\><c-n><c-w>k
cnoremap <a-l> <c-\><c-n><c-w>l
if has('nvim')
  tnoremap <a-h> <c-\><c-n><c-w>h
  tnoremap <a-j> <c-\><c-n><c-w>j
  tnoremap <a-k> <c-\><c-n><c-w>k
  tnoremap <a-l> <c-\><c-n><c-w>l
  tnoremap <Esc> <C-\><C-n>
endif

if exists('g:loaded_textobj_rubyblock')  "{{{1
  finish
endif

" Interface  "{{{1
call textobj#user#plugin('rubyblock', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'ar',  '*select-a-function*': 's:select_a',
\        'select-i': 'ir',  '*select-i-function*': 's:select_i'
\      }
\    })

" Misc.  "{{{1
function! s:select_a()
  call search('\<end\>', 'cW')
  let end_pos = getpos('.')

  normal %
  let start_pos = getpos('.')

  return ['V', start_pos, end_pos]
endfunction

function! s:select_i()
  call search('\<end\>', 'cW')
  let end_pos = getpos('.')

  normal %
  let start_pos = getpos('.')

  return ['V', start_pos, end_pos]
endfunction

" Fin.  "{{{1

let g:loaded_textobj_rubyblock = 1

" __END__
" vim: foldmethod=marker

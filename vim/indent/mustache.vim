if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal autoindent
setlocal indentexpr=GetMustacheIndent()
setlocal indentkeys=o,O,*<Return>,<:>,0<Bar>,0#,=,!^F

let b:undo_indent = 'setl ai< inde< indk<'

" Only define the function once.
if exists("*GetMustacheIndent")
  finish
endif

function! s:syn(lnum)
  return synIDattr(synID(a:lnum,1+indent(a:lnum),1),'name')
endfunction

function! GetMustacheIndent()
  let line  = getline(prevnonblank(v:lnum-1))
  let cline = getline(v:lnum)
  let nline = getline(nextnonblank(v:lnum+1))
  let syn = s:syn(prevnonblank(v:lnum-1))
  let csyn = s:syn(v:lnum)
  let nsyn = s:syn(nextnonblank(v:lnum+1))
endfunction

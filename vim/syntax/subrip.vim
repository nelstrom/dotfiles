" Vim syntax file
" Language:	Syntax highlighting for subtitle files in Subrip (srt) format
" Maintainer:	Josip Deanovic <djosip@croadria.com>
" Last Change:	2003 Jun 28

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
     syntax clear
  elseif exists("b:current_syntax")
     finish
  endif
  let main_syntax = 'subrip'
endif


syn case ignore


syn match srtComment "^#.*"
syn match srtNumber "^[0-9]*$"
syn match srtArrow " --> "
syn region transparent matchgroup=srtTime start='[0-9]*:[0-9]*:[0-9]*,[0-9]*' end='[0-9]*:[0-9]*:[0-9]*,[0-9]*' contains=srtArrow
syn match srtError "{y:[bi]}"
syn match srtError "{y:[bi][bi]}"
syn match srtError "\[br\]"


if main_syntax == "subrip"
   syn sync minlines=10
endif


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_srt_syn_inits")
  if version < 508
     let did_srt_syn_inits = 1
     command -nargs=+ HiLink hi link <args>
  else
     command -nargs=+ HiLink hi def link <args>
  endif

  HiLink srtComment Comment
  HiLink srtNumber Number
  HiLink srtArrow Statement
  HiLink srtTime Type
  HiLink srtError Error
  delcommand HiLink

endif

let b:current_syntax = "subrip"

if main_syntax == 'subrip'
   unlet main_syntax
endif

" vim: ts=8

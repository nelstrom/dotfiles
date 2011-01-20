function! MarkdownFolds()
  if match(getline(v:lnum), "^#\\{6}") >= 0
    return ">6"
  elseif match(getline(v:lnum), "^#\\{5}") >= 0
    return ">5"
  elseif match(getline(v:lnum), "^#\\{4}") >= 0
    return ">4"
  elseif match(getline(v:lnum), "^#\\{3}") >= 0
    return ">3"
  elseif match(getline(v:lnum), "^#\\{2}") >= 0
    return ">2"
  elseif match(getline(v:lnum), "^#\\{1}") >= 0
    return ">1"
  else
    return "="
  endif
endfunction

function! MarkdownFoldText()
  let foldedlinecount = v:foldend - v:foldstart
  let linenum = v:foldstart
  let title = "Untitled"
  return "+" . v:folddashes . " " . foldedlinecount . " " . title
endfunction

setlocal foldmethod=expr
setlocal foldexpr=MarkdownFolds()
setlocal foldtext=MarkdownFoldText()

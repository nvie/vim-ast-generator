setlocal indentexpr=AGIndent()

function! AGIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  let prevOpened = previous =~ "{"
  let prevClosed = previous =~ "{.*}"
  let currClosed = line =~ "}"

  if prevOpened && !prevClosed
    if !currClosed
      return indent(previousNum) + &tabstop
    endif
  elseif !prevOpened
    if currClosed
      return indent(previousNum) - &tabstop
    endif
  endif

  return indent(previousNum)
endfunction

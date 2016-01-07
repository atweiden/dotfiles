function! ToggleCtrlSF()
  if (bufwinnr('__CtrlSF__') == 1) || (bufwinnr('__CtrlSFPreview__') == 1)
    :CtrlSFClose
  else
    :CtrlSFOpen
  endif
endfunction

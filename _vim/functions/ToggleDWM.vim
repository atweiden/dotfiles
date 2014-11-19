function! ToggleDWM()
  if g:dwm_is_active
    let cur = bufnr('%') | bufdo if bufnr('%') != cur | bunload | endif
    let g:dwm_is_active = 0
  else
    let s:buflist = []
    bufdo let s:buflist += [[bufnr('%'), bufname('%'), &ft]]
    for b in s:buflist
      execute "normal \<Plug>DWMNew"
      execute "buffer ". b[0]
    endfor
    let g:dwm_is_active = 1
  endif
endfunction

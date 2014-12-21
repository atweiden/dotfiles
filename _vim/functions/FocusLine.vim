" Source: https://bitbucket.org/sjl/dotfiles
" "Focus" the current line. Basically:
"
" 1. Close all folds.
" 2. Open just the folds containing the current line.
" 3. Move the line to a little bit (15 lines) above the center of the screen.

function! FocusLine()
  let b:save_pos = getpos(".")
  exe ":silent! normal zM"
  exe ":silent! normal zv"
  exe ":silent! normal zz"
  exe "normal! 15\<C-E>"
  call setpos('.', b:save_pos)
endfunction

" disable by default
let g:dwm_is_active = 0

" disable default keybindings
let g:dwm_map_keys = 0

" set master pane width to 66% of editor width
let g:dwm_master_pane_width = "66%"

" toggle
nnoremap <silent> <M-T> :call ToggleDWM()<CR>

" new user-specified window
nnoremap <M-t> :DWMNewSpecified<space>

" new window
nmap <M-w> <Plug>DWMNew

" close window
nmap <M-q> <Plug>DWMClose

" focus window
nmap <M-c> <Plug>DWMFocus

" move cursor clockwise to the next window
nnoremap <M-d> <C-W>w

" move cursor counter-clockwise to the previous window
nnoremap <M-a> <C-W>W

" rotate windows clockwise
nmap <M-D> <Plug>DWMRotateClockwise

" rotate windows counter-clockwise
nmap <M-A> <Plug>DWMRotateCounterclockwise

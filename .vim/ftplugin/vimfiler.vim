setlocal cursorline cursorcolumn winfixwidth
nunmap <buffer> <C-J>
nunmap <buffer> <C-L>
nunmap <buffer> E
nmap <buffer> s      <Plug>(vimfiler_split_edit_file)
nmap <buffer> p      <Plug>(vimfiler_preview_file)
nmap <buffer> R      <Plug>(vimfiler_rename_file)
nmap <buffer> <M-R>  <Plug>(vimfiler_redraw_screen)
nmap <buffer> '      <Plug>(vimfiler_toggle_mark_current_line)

" default = g:ConqueGdb_Leader . 'p', which conflicts with paste
"let g:ConqueGdb_Print = <leader> ...

" default = g:ConqueGdb_Leader . 'd', which conflicts with YCM
"let g:ConqueGdb_DeleteBreak = <leader> ...

" remap leader key due to default binding conflicts
let g:ConqueGdb_Leader = '\'

" answer GDB confirmations without having to go to the Conque GDB window
nnoremap <silent> <leader>Y :ConqueGdbCommand y<CR>
nnoremap <silent> <leader>N :ConqueGdbCommand n<CR>

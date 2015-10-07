" Use vimfiler as default explorer
let g:loaded_netrwPlugin = 1
let g:vimfiler_as_default_explorer = 1

" Textmate icons
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

" Don't detect drives
let g:vimfiler_detect_drives = []

" Use trash-cli if deleting files from vimfiler
"let g:unite_kind_file_use_trashbox = 1

" Open files in new tabs
call vimfiler#custom#profile('default', 'context', {
      \ 'edit_action' : 'tabopen'
      \ })

" Open a vimfiler buffer automatically when Vim starts up if no files
" (arguments) were specified

"augroup vimfiler
"  autocmd!
"  autocmd VimEnter * if !argc() | VimFiler | endif
"augroup END

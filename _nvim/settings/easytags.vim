set tags=./tags;
let g:easytags_dynamic_files = 2
let g:easytags_updatetime_autodisable = 1
let g:easytags_updatetime_min = 4000
" Prevent automatic ctag updates
let g:easytags_auto_update = 0
let g:easytags_auto_highlight = 0
let g:easytags_on_cursorhold = 0
" Generate tags manually
nnoremap <leader>tu :UpdateTags<CR>
" Scan recursively, not just current file
let g:easytags_autorecurse = 1
" Follow symbolic links
let g:easytags_resolve_links = 1

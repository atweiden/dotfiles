" don't map backslashes (\\)
let g:commentary_map_backslash = 0

augroup commentary
  autocmd!
  autocmd FileType xdefaults set commentstring=!%s
augroup END

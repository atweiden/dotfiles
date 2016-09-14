nnoremap <C-F> :CtrlSF<space>
nnoremap <silent> <C-G> :call ToggleCtrlSF()<CR>
let g:ctrlsf_position = 'left'
let g:ctrlsf_winsize = '70%'

" enter search regexes by default
let g:ctrlsf_regex_pattern = 1

" start searches without explicit search path from project VCS root
" gleaned from current file
"
" if project VCS root can't be gleaned, search from cwd
let g:ctrlsf_default_root = 'project+fw'

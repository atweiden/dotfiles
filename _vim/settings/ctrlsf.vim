nnoremap <C-F> :CtrlSF<space>
nnoremap <silent> <C-G> :call ToggleCtrlSF()<CR>
let g:ctrlsf_position = 'left'
let g:ctrlsf_winsize = '70%'

" enter search regexes by default
let g:ctrlsf_regex_pattern = 1

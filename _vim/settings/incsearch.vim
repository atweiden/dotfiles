map <leader><leader>/  <Plug>(incsearch-forward)
map <leader><leader>?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
augroup incsearch-keymap
    autocmd!
    autocmd VimEnter call s:incsearch_keymap()
augroup END
function! s:incsearch_keymap()
    IncSearchNoreMap <C-f> <Right>
    IncSearchNoreMap <C-b> <Left>
endfunction

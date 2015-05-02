map <leader><leader>/  <Plug>(incsearch-forward)
map <leader><leader>?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Compatibility with vim-indexed-search
let g:indexed_search_mappings = 0

augroup incsearch-indexed
  autocmd!
  autocmd User IncSearchLeave ShowSearchIndex
augroup END

augroup incsearch-keymap
  autocmd!
  autocmd VimEnter call s:incsearch_keymap()
augroup END

function! s:incsearch_keymap()
  IncSearchNoreMap <C-F> <Right>
  IncSearchNoreMap <C-B> <Left>
endfunction

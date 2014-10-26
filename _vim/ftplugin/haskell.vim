" Type of expression under cursor
nnoremap <silent> <leader>ht :GhcModType<CR>
" Insert type of expression under cursor
nnoremap <silent> <leader>hT :GhcModTypeInsert<CR>
" GHC errors and warnings
nnoremap <silent> <leader>hc :SyntasticCheck ghc_mod<CR>
" Conversions
vnoremap <silent> <leader>h. :call Pointfree()<CR>
vnoremap <silent> <leader>h> :call Pointful()<CR>
" Generate haskell tags with codex and hscope
noremap <leader>tg :!codex update<CR>:call system("git hscope")<CR><CR>:call LoadHscope()<CR>

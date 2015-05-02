" type of expression under cursor
nnoremap <silent> <leader>ht :GhcModType<CR>

" insert type of expression under cursor
nnoremap <silent> <leader>hT :GhcModTypeInsert<CR>

" GHC errors and warnings
nnoremap <silent> <leader>hc :SyntasticCheck ghc_mod<CR>

" conversions
vnoremap <silent> <leader>h. :call Pointfree()<CR>
vnoremap <silent> <leader>h> :call Pointful()<CR>

" generate haskell tags with codex and hscope
noremap <leader>tg :!codex update<CR>:call system("git hscope")<CR><CR>:call LoadHscope()<CR>

" filenames for the tag command
set tags=tags;/,codex.tags;/

" use hscope for executing cscope
set csprg=hscope

" search codex tags first
set csto=1

" always search cscope databases as well as tag files
set cst

" indicate success or failure when adding a cscope database
set csverb

" only insert the longest common text of the matches
set completeopt+=longest

" Automatically make cscope connections
augroup hscope
  autocmd!
  autocmd BufEnter *.hs call LoadHscope()
augroup END

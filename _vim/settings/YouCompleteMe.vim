let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 1
" let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_server_idle_suicide_seconds = 6000

nnoremap <leader>] :YcmCompleter GoToDefinitionElseDeclaration<CR>mzzMzvzz15<c-e>`z:Pulse<cr>
" nnoremap <leader>] :YcmCompleter GoToDeclaration<CR>mzzMzvzz15<c-e>`z:Pulse<cr>

" for vim-neco-ghc
let g:ycm_semantic_triggers = {'haskell' : ['.']}

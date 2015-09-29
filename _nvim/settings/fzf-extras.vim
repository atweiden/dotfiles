" cat /usr/share/dict/words
imap <C-X><C-K> <Plug>(fzf-complete-word)

" path completion using find (file + dir)
imap <C-X><C-F> <Plug>(fzf-complete-path)

" file completion using ag
imap <C-X><C-J> <Plug>(fzf-complete-file-ag)

" line completion (current buffer only)
imap <C-X><C-L> <Plug>(fzf-complete-line)

" open files from CWD
nnoremap <silent> <leader>o :Files<CR>

" select buffer
nnoremap <silent> <leader>lz :Buffers<CR>

" search lines in current buffer
nnoremap <silent> <M-f> :BLines<CR>

" search lines in loaded buffers
nnoremap <silent> <M-F> :Lines<CR>

" simple MRU file search
nnoremap <silent> <M-m> :History<CR>

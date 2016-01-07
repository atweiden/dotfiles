" prepend FZF to commands
let g:fzf_command_prefix = 'FZF'

" cat /usr/share/dict/words
imap <C-X><C-K> <Plug>(fzf-complete-word)

" path completion using find (file + dir)
imap <C-X><C-F> <Plug>(fzf-complete-path)

" file completion using ag
imap <C-X><C-J> <Plug>(fzf-complete-file-ag)

" line completion (current buffer only)
imap <C-X><C-L> <Plug>(fzf-complete-line)

" open files from CWD
nnoremap <silent> <leader>o :FZFFiles<CR>

" select buffer
nnoremap <silent> <leader>lz :FZFBuffers<CR>

" search lines in current buffer
nnoremap <silent> <M-f> :FZFBLines<CR>

" search lines in loaded buffers
nnoremap <silent> <M-F> :FZFLines<CR>

" simple MRU file search
nnoremap <silent> <M-m> :FZFHistory<CR>

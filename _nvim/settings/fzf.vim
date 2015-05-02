let g:fzf_launcher = 'urxvt -geometry 120x30 -e sh -c %s'

" search files from CWD
nnoremap <silent> <M-F> :FZF<CR>
tnoremap <silent> <M-F> <C-\><C-N>:FZF<CR>

" search lines in all open vim buffers
nnoremap <silent> <M-f> :FZFLines<CR>
tnoremap <silent> <M-f> <C-\><C-N>:FZFLines<CR>

" simple MRU search
nnoremap <silent> <M-m> :FZFMru<CR>
tnoremap <silent> <M-m> <C-\><C-N>:FZFMru<CR>

" fuzzy cmdline completion
" add an extra <CR> at the end of this line to automatically accept the
" fzf-selected completions.
cnoremap <silent> <C-L> <C-\>eGetCompletions()<CR><CR>

" hit <C-L> while in the ex commandline (i.e. after pressing :) to have fzf
" filter a list of vim's commandline auto-completions. Try :colo␣<c-l>
" (be sure to include the space) or :b␣<c-l>. There are special cases
" for handling file-searches, so that you can go deeper into the path than
" just one directory at a time, and so that you can add multiple files to
" the arglist at once. More special cases could be added. Some limitations:
" the auto-complete for :help and :tag are limited to 300 entries, so you
" may need to narrow it a bit.

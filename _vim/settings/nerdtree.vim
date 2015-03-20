let g:NERDTreeChDirMode=1              " Open NERDTree in working directory
let g:NERDTreeShowFiles=1              " Show files by default
let g:NERDTreeShowHidden=1             " Show hidden files by default
let g:NERDTreeQuitOnOpen=1             " Close NERDTree upon selecting file to open
let g:NERDTreeHighlightCursorline=1    " Highlight the selected entry in the tree
let g:NERDTreeMouseMode=2              " Use a single click to fold/unfold directories and a double click to open files
let g:NERDTreeMinimalUI = 1
let g:NERDChristmasTree = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinSize = 30
let g:NERDTreeMapJumpFirstChild = 'gK'
nnoremap <silent> <F12> :NERDTreeToggle<CR>
inoremap <silent> <F12> <C-O>:NERDTreeToggle<CR>
vnoremap <silent> <F12> <ESC>:NERDTreeToggle<CR>gv

" If nerd tree is closed, find current file, if open, close it
nnoremap <silent> <leader>nf <ESC>:call ToggleFindNerd()<CR>

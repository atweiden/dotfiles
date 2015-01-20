let NERDTreeChDirMode=1              " Open NERDTree in working directory
let NERDTreeShowFiles=1              " Show files by default
let NERDTreeShowHidden=1             " Show hidden files by default
let NERDTreeQuitOnOpen=1             " Close NERDTree upon selecting file to open
let NERDTreeHighlightCursorline=1    " Highlight the selected entry in the tree
let NERDTreeMouseMode=2              " Use a single click to fold/unfold directories and a double click to open files
let NERDTreeMinimalUI = 1
let NERDChristmasTree = 1
let NERDTreeDirArrows = 1
let NERDTreeChDirMode = 2
let g:NERDTreeWinSize = 30
let NERDTreeMapJumpFirstChild = 'gK'
nnoremap <silent> <F12> :NERDTreeToggle<CR>
inoremap <silent> <F12> <C-O>:NERDTreeToggle<CR>
vnoremap <silent> <F12> <ESC>:NERDTreeToggle<CR>gv

" If nerd tree is closed, find current file, if open, close it
nnoremap <silent> <leader>nf <ESC>:call ToggleFindNerd()<CR>

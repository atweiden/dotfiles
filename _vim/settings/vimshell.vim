" vimshell prompt with leading CWD
let g:vimshell_prompt_expr = 'escape(fnamemodify(getcwd(), ":~").">", "\\[]()?! ")." "'
let g:vimshell_prompt_pattern = '^\%(\f\|\\.\)\+> '

" history file
let g:vimshell_external_history_path = expand('~/.bash_history')

" split to new tab
let g:vimshell_split_command = 'tabnew'

" increase scrollback and history limits
let g:vimshell_scrollback_limit = 100000
let g:vimshell_max_command_history = 100000

" urxvt
let g:vimshell_use_terminal_command = 'urxvt -geometry 120x30 -e sh -c %s'

" use less as default pager
let g:vimshell_cat_command = 'less -X'

" gvim is specialized gui command
call vimshell#set_alias('gvim', 'gexe gvim')

" . to source like usual
call vimshell#set_alias('.', 'source')

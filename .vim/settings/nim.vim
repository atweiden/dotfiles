" allow usage of neovim jobcontrol
let g:nvim_nim_enable_async = has("nvim")

" location of nim executable
let g:nvim_nim_exec_nim = '/usr/bin/nim'

" location of nimble executable
let g:nvim_nim_exec_nimble = '/usr/bin/nimble'

" location of nimsuggest executable
let g:nvim_nim_exec_nimsuggest = '/usr/bin/nimsuggest'

" location of bash executable
let g:nvim_nim_exec_bash = '/bin/bash'

" location of nim modules
"let g:nvim_nim_deps_nim = FindNimModulesPath()

" location of nimble modules
"let g:nvim_nim_deps_nimble = FindNimbleModulesPath()

" use nimsuggest based highlighting
let g:nvim_nim_highlighter_enable = 1

" highlight builtin words
let g:nvim_nim_highlight_builtin = 1

" width of the outline buffer
let g:nvim_nim_outline_buffer_width = 30

" height of the repl terminal
let g:nvim_nim_repl_height = 14

" split orientation of the repl
let g:nvim_nim_repl_vsplit = 0

" disable default command bindings
let g:nvim_nim_enable_default_binds = 0

" enable custom text objects (like routines with vif)
let g:nvim_nim_enable_custom_textobjects = 1

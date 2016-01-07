" Prompt for a command to run
noremap <leader>rp :PromptVimTmuxCommand<space>

" Run last command executed by RunVimTmuxCommand
noremap <leader>rl :RunLastVimTmuxCommand

" Inspect runner pane
noremap <leader>ri :InspectVimTmuxRunner

" Close all other tmux panes in current window
noremap <leader>rx :CloseVimTmuxPanes

" Interrupt any command running in the runner pane
noremap <leader>rs :InterruptVimTmuxRunner

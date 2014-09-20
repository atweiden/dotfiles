" Prompt for a command to run
map <leader>rp :PromptVimTmuxCommand

" Run last command executed by RunVimTmuxCommand
map <leader>rl :RunLastVimTmuxCommand

" Inspect runner pane
map <leader>ri :InspectVimTmuxRunner

" Close all other tmux panes in current window
map <leader>rx :CloseVimTmuxPanes

" Interrupt any command running in the runner pane
map <leader>rs :InterruptVimTmuxRunner

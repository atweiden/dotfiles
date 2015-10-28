# This tmux statusbar config was created by tmuxline.vim
# on Wed, 08 Apr 2015

set -g status-bg "colour236"
set -g message-command-fg "colour236"
set -g status-justify "left"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg "colour4"
set -g message-bg "colour4"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg "colour236"
set -g message-command-bg "colour4"
set -g status-attr "none"
set -g status-utf8 "on"
set -g pane-border-fg "colour239"
set -g status-left-attr "none"
setw -g window-status-fg "colour4"
setw -g window-status-attr "none"
setw -g window-status-activity-bg "colour236"
setw -g window-status-activity-attr "none"
setw -g window-status-activity-fg "colour4"
setw -g window-status-separator ""
setw -g window-status-bg "colour236"
set -g status-left "#[fg=colour236,bg=colour4] #S #[fg=colour4,bg=colour236,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=colour239,bg=colour236,nobold,nounderscore,noitalics]#[fg=colour253,bg=colour239] %Y-%m-%d  %H:%M #[fg=colour4,bg=colour239,nobold,nounderscore,noitalics]#[fg=colour239,bg=colour4]ϟ#(acpi --battery | awk '{print $4}' | sed 's/%,$//') "
setw -g window-status-format "#[fg=colour4,bg=colour236] #I #[fg=colour4,bg=colour236] #W "
setw -g window-status-current-format "#[fg=colour236,bg=colour4,nobold,nounderscore,noitalics]#[fg=colour110,bg=colour4] #I #[fg=colour236,bg=colour4,nobold,nounderscore,noitalics]#[fg=colour236,bg=colour4] #W #[fg=colour4,bg=colour236,nobold,nounderscore,noitalics]"

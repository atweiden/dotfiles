# border colours
set -g pane-border-fg blue
set -g pane-active-border-fg magenta
set -g pane-active-border-bg default

# statusbar --------------------------------------------------------------
set -g status "on"
set -g status-attr "none"
set -g status-justify "left"
set -g status-left-length "100"
set -g status-left-attr "none"
set -g status-left "#[fg=blue,nobright] #S |"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g status-right "#[fg=blue,nobright] %Y-%m-%d | %H:%M | #(acpi --battery | awk '{print $4}' | sed 's/,$//') "
set -g status-interval 1

# default statusbar colors
set -g status-fg white
set -g status-bg default

# bell colours
set -g window-status-bell-bg default
set -g window-status-bell-fg red
set -g window-status-bell-attr bright

# default window title colors
setw -g window-status-fg "blue"
setw -g window-status-bg "black"
setw -g window-status-attr "none"
setw -g window-status-activity-attr "none"
setw -g window-status-separator ""
setw -g window-status-format "#[fg=blue]#I:#W "

# active window title colours
setw -g window-status-current-format "#[fg=red]#I#[fg=blue]:#W "

# message colours
set -g message-fg magenta
set -g message-bg default
set -g message-attr bright

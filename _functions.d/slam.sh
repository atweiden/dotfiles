#!/bin/bash

# -----------------------------------------------------------------------------
# slam: safe shut down
# -----------------------------------------------------------------------------

function slam() {
quixand -p ~/.bash_history ~/.lesshst ~/.local/share/recently-used.xbel ~/.viminfo ~/.vim_mru_files -d ~/Sandbox ~/.cache ~/.thumbnails ~/.vim/.backups ~/.vim/.swaps ~/.vim/.tmp ~/.vim/.undo && sudo shutdown now
}

#!/bin/bash

# -----------------------------------------------------------------------------
# slam: safe reboot
# -----------------------------------------------------------------------------

function slur() {
quixand -p ~/.bash_history ~/.local/share/recently-used.xbel ~/.viminfo ~/.vim_mru_files -d ~/Sandbox ~/.cache ~/.thumbnails ~/.vim/.backups ~/.vim/.swaps ~/.vim/.tmp ~/.vim/.undo && sudo reboot
}

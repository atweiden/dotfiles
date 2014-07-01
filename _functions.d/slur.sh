#!/bin/bash

# -----------------------------------------------------------------------------
# slam: safe reboot
# -----------------------------------------------------------------------------

function slur() {
quixand -p ~/.bash_history ~/.lesshst ~/.local/share/recently-used.xbel ~/.viminfo ~/.vim_mru_files -d ~/Sandbox ~/.cache ~/.thumbnails ~/.vim/.backups ~/.vim/.swaps ~/.vim/.tmp ~/.vim/.undo && sudo reboot
}

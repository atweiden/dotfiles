#!/bin/bash

# -----------------------------------------------------------------------------
# slur: safe reboot
# -----------------------------------------------------------------------------

function slur() {
[[ -x /usr/bin/quixand ]] \
  && quixand -p ~/.bash_history \
                ~/.lesshst \
                ~/.local/share/recently-used.xbel \
                ~/.viminfo \
                ~/.vim_mru_files \
                -d ~/Sandbox \
                   ~/.cache \
                   ~/.thumbnails \
                   ~/.vim/.backups \
                   ~/.vim/.swaps \
                   ~/.vim/.tmp \
                   ~/.vim/.undo \
                   ~/.vim/view
sudo reboot
}

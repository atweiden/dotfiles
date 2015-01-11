#!/bin/bash

# -----------------------------------------------------------------------------
# slam: safe shut down
# -----------------------------------------------------------------------------

function slam() {
[[ -x /usr/bin/quixand ]] \
  && quixand -p ~/.bash_history \
                ~/.gmrun_history \
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
sudo shutdown now
}

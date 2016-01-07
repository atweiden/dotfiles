#!/bin/bash

# -----------------------------------------------------------------------------
# dug: display directories ranked by size (GB), descending order
# https://raymii.org/s/snippets/Arch-bash-pacman-bashrc-tips.html
# -----------------------------------------------------------------------------

dug() {
du -h | grep ^[0-9.]*G | sort -rn | head -n 20
}

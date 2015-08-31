#!/bin/bash

# -----------------------------------------------------------------------------
# dum: display directories ranked by size (MB), descending order
# https://raymii.org/s/snippets/Arch-bash-pacman-bashrc-tips.html
# -----------------------------------------------------------------------------

dum() {
du -h | grep ^[0-9.]*M | sort -rn | head -n 20
}

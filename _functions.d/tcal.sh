#!/bin/bash

# -----------------------------------------------------------------------------
# tcal: display simple calendar with today marked as ##
# https://raymii.org/s/snippets/Arch-bash-pacman-bashrc-tips.html
# -----------------------------------------------------------------------------

tcal() {
cal | sed "s/^/ /;s/$/ /;s/ $(date +%e) / $(date +%e | sed '''s/./#/g''') /"
}

#!/bin/bash

# -----------------------------------------------------------------------------
# sudo: Prevents a program or shell function from pretending to be sudo
# https://raw.githubusercontent.com/GNU-Pony/bash.d/master/src/harden.bash
# -----------------------------------------------------------------------------

function sudo {
/usr/bin/sudo --prompt $'\e[01;35m[sudo] password for '"$USER"$': \033[00m' "$@"
}

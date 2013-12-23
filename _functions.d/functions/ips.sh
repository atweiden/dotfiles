#!/bin/bash

# -----------------------------------------------------------------------------
# ips: view ip address
# https://github.com/Aqua-Ye/dotfiles
# -----------------------------------------------------------------------------

function ips() {
ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'
}

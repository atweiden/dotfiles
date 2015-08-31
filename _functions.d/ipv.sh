#!/bin/bash

# -----------------------------------------------------------------------------
# ipv: view ip address
# https://github.com/Aqua-Ye/dotfiles
# -----------------------------------------------------------------------------

ipv() {
#curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'
dig +short myip.opendns.com @resolver1.opendns.com
}

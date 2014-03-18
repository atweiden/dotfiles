#!/bin/bash

# -----------------------------------------------------------------------------
# secure_chromium: start Chromium with SOCKS5 proxy
# https://wiki.archlinux.org/index.php/Secure_Shell
# -----------------------------------------------------------------------------

function secure_chromium() {
  port=4711
  export SOCKS_SERVER=localhost:$port
  export SOCKS_VERSION=5
  chromium &
  exit
}

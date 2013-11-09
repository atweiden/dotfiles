#!/bin/bash

# -----------------------------------------------------------------------------
# qrshow: create and display QR code with qrencode
# https://news.ycombinator.com/item?id=5332843
# -----------------------------------------------------------------------------

function qrshow() { qrencode -s 10 "$1" -o - | display - ; }

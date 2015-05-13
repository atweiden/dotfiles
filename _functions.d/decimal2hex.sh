#!/bin/bash

# -----------------------------------------------------------------------------
# decimal2hex: convert decimal number to hex
# -----------------------------------------------------------------------------

function decimal2hex() {
for _decimal in "$@"; do
  echo "$_decimal" | perl -n -e 'print sprintf("0x%x", $_), "\n"'
done
}

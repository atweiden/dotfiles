#!/bin/bash

# -----------------------------------------------------------------------------
# decimal2hex: convert decimal number to hex
# -----------------------------------------------------------------------------

function decimal2hex() {
for _decimal in "$@"; do
  printf "0x%x\n" "$_decimal"
done
}

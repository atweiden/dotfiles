#!/bin/bash

# -----------------------------------------------------------------------------
# colors: print all 256 colors for testing
# http://www.commandlinefu.com/commands/view/6533/print-all-256-colors-for-testing-term-or-for-a-quick-reference
# -----------------------------------------------------------------------------

colors() {
( x=$(tput op) y=$(printf %$((${COLUMNS}-6))s);
  for i in {0..256}; do
    o=00$i;
    echo -e ${o:${#o}-3:3} $(tput setaf $i; tput setab $i)${y// /=}$x;
  done )
}

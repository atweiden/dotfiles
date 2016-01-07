#!/bin/bash

# -----------------------------------------------------------------------------
# pkgtree: display installed files of package
# -----------------------------------------------------------------------------

pkgtree() {
[[ -x /usr/bin/package-query ]] \
  && package-query -Q -f %F $1 | sed 's@\s@\n@g' | sed 's@^@/@' | sort
}

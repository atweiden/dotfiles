#!/bin/bash

# -----------------------------------------------------------------------------
# emod: open files in mercurial repo with uncommitted changes
# -----------------------------------------------------------------------------

emod() {
declare _modified=($(hg st | perl -n -e 'if (/^M\b(.*)$/) { print "$1\n" }' | awk '{print $1}'))
$EDITOR "${_modified[@]}"
}

#!/bin/bash

# -----------------------------------------------------------------------------
# emoda: open files in mercurial repo with uncommitted changes, incl. untracked
# -----------------------------------------------------------------------------

function emoda() {
declare _modified_and_untracked=($(hg st | perl -n -e 'if (/^(?:M\b|\?)(.*)$/) { print "$1\n" }' | awk '{print $1}'))
$EDITOR "${_modified_and_untracked[@]}"
}

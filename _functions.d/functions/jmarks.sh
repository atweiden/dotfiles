#!/bin/bash

# -----------------------------------------------------------------------------
# jmarks: quickly navigate your filesystem from the command-line
# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
# -----------------------------------------------------------------------------

export MARKPATH=$HOME/.marks
function jump() { 
  mkdir -p "$MARKPATH"; cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark() { 
  mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark() { 
  mkdir -p "$MARKPATH"; rm -i "$MARKPATH/$1"
}
function marks() {
  ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
_completemarks() {
  local curw=${COMP_WORDS[COMP_CWORD]}
  local wordlist=$(find $MARKPATH -type l -printf "%f\n")
  COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
  return 0
}
complete -F _completemarks jump unmark

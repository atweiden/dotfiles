#!/bin/bash

# -----------------------------------------------------------------------------
# dateh: view date in all formats
# http://www.commandlinefu.com/commands/view/5423/view-all-date-formats-quick-reference-help-alias
# -----------------------------------------------------------------------------

function dateh() {
date --help|sed "/^ *%%/,/^ *%Z/!d;s/ \+/ /g"|while read l;do date "+ %${l/% */}_${l/% */}_${l#* }";done|column -s_ -t
}

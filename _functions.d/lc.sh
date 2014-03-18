#!/bin/bash

# -----------------------------------------------------------------------------
# lc: count number of files
# https://news.ycombinator.com/item?id=5023277
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# `lc /dir`  : counts the number of files in /dir
# `lc /dir/*`: counts the files in subdirectories of /dir.

function lc() { if [[ "$#" -gt 1 ]]; then for DIR in "$@"; do echo -n "$DIR - " ; ls -AU1 $DIR | wc -l ; done ; else ls -AU1 "$@" | wc -l ; fi; }

#!/bin/bash

# -----------------------------------------------------------------------------
# lcf: count number of files
# https://news.ycombinator.com/item?id=5023277
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# `lcf /dir`  : counts the number of files in /dir
# `lcf /dir/*`: counts the files in subdirectories of /dir.

lcf() { if [[ "$#" -gt 1 ]]; then for DIR in "$@"; do echo -n "$DIR - " ; ls -AU1 $DIR | wc -l ; done ; else ls -AU1 "$@" | wc -l ; fi; }

#!/bin/bash

# -----------------------------------------------------------------------------
# tailfile: tail a file with timestamps
# http://www.commandlinefu.com/commands/view/7156/monitor-a-file-with-tail-with-timestamps-added
# -----------------------------------------------------------------------------

function tailfile() { tail -f $1 | xargs -IX printf "$(date -u)\t%s\n" X; }

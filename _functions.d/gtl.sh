#!/bin/bash

# -----------------------------------------------------------------------------
# gtl: go to the current git repo's top level directory
# https://github.com/harleypig/dotfiles
# -----------------------------------------------------------------------------

function gtl() { cd $(git rev-parse --show-toplevel); }

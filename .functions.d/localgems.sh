#!/bin/bash

# -----------------------------------------------------------------------------
# localgem: install Ruby gems locally
# -----------------------------------------------------------------------------

localgem() { export GEM_HOME=$PWD/.gems; export PATH=$GEM_HOME/bin:$PWD/bin:$PATH; export RUBYLIB=$PWD/lib:$RUBYLIB; gem install --no-user-install "$@"; }

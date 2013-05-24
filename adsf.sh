#!/bin/sh
#===============================================================================
#
#         FILE: adsf.sh
#
#        USAGE: cd /path/to/app; chmod u+x adsf.sh; ./adsf.sh; adsf -h
#
#  DESCRIPTION: A Dead Simple File Server, made even simpler.
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Andy Weidenbaum (archbaum@gmail.com)
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/30/2012 10:36:28 AM
#     REVISION: ---
#===============================================================================

export GEM_HOME=$PWD/.gems
export PATH=$GEM_HOME/bin:$PWD/bin:$PATH
export RUBYLIB=$PWD/lib:$RUBYLIB
gem install --no-user-install adsf

# Now go serve some static files:
#   export PATH=$GEM_HOME/bin:$PWD/bin:$PATH
#   adsf -p 54321
# Credit: http://stoneship.org/software/adsf

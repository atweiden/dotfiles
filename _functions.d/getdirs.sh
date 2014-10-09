#!/bin/bash

# -----------------------------------------------------------------------------
# get[a]dirs[o]: list [all] directories [only '.' dirs]
# -----------------------------------------------------------------------------

normal=$(tput sgr0)
blue=$(tput setaf 4)
bold=$(tput bold)

function getdirs() {
declare _dirs=$(find "$@" -mindepth 1 -maxdepth 1 -type d ! -name "*.*" | sort | sed 's@^./@@' | awk -F'/' '{print $NF}')
for i in ${!_dirs[@]}; do
  echo "${bold}${blue}${_dirs[${i}]}${normal}" | sed 's@$@/@'
done
}

function getadirs() {
declare _adirs=$(find "$@" -mindepth 1 -maxdepth 1 -type d | sort | sed 's@^./@@' | awk -F'/' '{print $NF}')
for i in ${!_adirs[@]}; do
  echo "${bold}${blue}${_adirs[${i}]}${normal}" | sed 's@$@/@'
done
}

function getadirso() {
declare _adirso=$(find "$@" -mindepth 1 -maxdepth 1 -type d -name ".*" | sort | sed 's@^./@@' | awk -F'/' '{print $NF}')
for i in ${!_adirso[@]}; do
  echo "${bold}${blue}${_adirso[${i}]}${normal}" | sed 's@$@/@'
done
}

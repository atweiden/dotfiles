#!/bin/bash

# -----------------------------------------------------------------------------
# whoneeds: display arch packages that depend on another
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# colors

normal=$(tput sgr0)
bold=$(tput bold)
green=$(tput setaf 2)
white=$(tput setaf 7)


# -----------------------------------------------------------------------------
# depends

whoneeds() {
for _basepkg in "$@"; do
  echo "${bold}${white}Packages that depend on${normal} ${green}${_basepkg}${normal}:"
  for _pkg in `pacman -Qi "${_basepkg}" | ag required | sed 's@.*:\s@@'`; do
    echo "$_pkg"
  done
  echo ""
done
}


# -----------------------------------------------------------------------------
# optdepends

whowants() {
for _basepkg in "$@"; do
  echo "${bold}${white}Packages that optionally depend on${normal} ${green}${_basepkg}${normal}:"
  for _pkg in `pacman -Qi "${_basepkg}" | ag "optional for" | sed 's@.*:\s@@'`; do
    echo "$_pkg"
  done
  echo ""
done
}

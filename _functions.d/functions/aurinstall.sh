#!/bin/bash

# -----------------------------------------------------------------------------
# aurinstall: easily install one or more packages from the AUR
# -----------------------------------------------------------------------------

function aurinstall() {
ORIGIN=$PWD
aurpkgs=$(< /dev/stdin)
mkdir -p ~/.src
for aurpkg in "$@" "$aurpkgs"; do 
  cd ~/.src
  rm -rf ${aurpkg} ${aurpkg}.tar.gz*
  wget https://aur.archlinux.org/packages/${aurpkg:0:2}/${aurpkg}/${aurpkg}.tar.gz
  mkdir ${aurpkg}
  tar -xvzf ${aurpkg}.tar.gz --strip 1 -C ${aurpkg}
  cd ${aurpkg}
  makepkg -Acsi --noconfirm
done
cd $ORIGIN
}

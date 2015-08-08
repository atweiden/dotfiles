#!/bin/bash

# -----------------------------------------------------------------------------
# aurinstall: easily install one or more packages from the AUR
# -----------------------------------------------------------------------------

function aurinstall() {
read -a aurpkgs <<< "$(< /dev/stdin)"
mkdir -p ~/.src
ORIGIN="$PWD"
for aurpkg in "$@" "$aurpkgs"; do
  cd ~/.src
  rm -rf $aurpkg $aurpkg.tar.gz*
  curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/$aurpkg.tar.gz
  mkdir -p $aurpkg
  tar -xvzf $aurpkg.tar.gz --strip 1 -C $aurpkg
  cd $aurpkg
  makepkg -Acsi --noconfirm
done
cd "$ORIGIN"
}

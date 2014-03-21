#!/bin/bash

# -----------------------------------------------------------------------------
# chattrify: disable Btrfs Copy-On-Write (CoW) for single directories
# -----------------------------------------------------------------------------


#                           (requires root)                                   #


# -----------------------------------------------------------------------------
#
# Args
#
#   arg 1 = DIRECTORY in which to disable CoW
#   arg 2 = USER to chown DIRECTORY to
#   arg 3 = GROUP to chown DIRECTORY to
#
# Examples
#
#   chattrify "DIRECTORY" "USER" "GROUP"
#   chattrify "/var/log/journal" "root" "systemd-journal"
#   chattrify "/srv/bitcoin" "bitcoin" "bitcoin"


function chattrify() {

if [[ -d "$1" ]]; then
  echo -n "Moving original directory '$1' to '${1}_old'... "
  mv "$1" "${1}_old"
  echo "done"
fi

echo -n "Creating new directory '$1'... "
mkdir -p "$1"
echo "done"

echo -n "Disabling CoW on new directory '$1'... "
chattr +C "$1"
echo "done"

if [[ -d "${1}_old" ]]; then
  echo -n "Copying original files into new directory '$1'... "
  cp -R "${1}_old"/* "$1"
  echo "done"
fi

echo -n "Setting permissions on new directory '$1'... "
chown -R $2:$3 "$1"
echo "done"

if [[ -d "${1}_old" ]]; then
  echo -n "Removing original directory '${1}_old'... "
  rm -rf "${1}_old"
  echo "done"
fi
}

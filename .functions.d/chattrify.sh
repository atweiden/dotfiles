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
#   arg 2 = PERMISSIONS with which to chmod DIRECTORY
#   arg 3 = USER with which to chown DIRECTORY
#   arg 4 = GROUP with which to chown DIRECTORY
#
# Examples
#
#   chattrify "DIRECTORY" "PERMISSIONS" "USER" "GROUP"
#   chattrify "/var/log/journal" "755" "root" "systemd-journal"
#   chattrify "/srv/bitcoin" "755" "bitcoin" "bitcoin"

chattrify() {

_orig_dir=$( echo "$1" | sed 's@/$@@' )

if [[ -d "$1" ]]; then
  echo -n "Moving original directory '$1' to '${_orig_dir}_old'... "
  mv "$1" "${_orig_dir}"_old
  echo "done"
fi

echo -n "Creating new directory '$1'... "
mkdir -p "$1"
echo "done"

echo -n "Setting permissions on new directory '$1'... "
chmod "$2" "$1"
echo "done"

echo -n "Disabling CoW on new directory '$1'... "
chattr +C "$1"
echo "done"

if [[ -d "${_orig_dir}"_old ]]; then
  echo -n "Copying original files into new directory '$1'... "
  find "${_orig_dir}"_old -mindepth 1 -maxdepth 1 -exec cp -R '{}' "$1" \;
  echo "done"
fi

echo -n "Setting owner on new directory '$1'... "
chown -R $3:$4 "$1"
echo "done"

if [[ -d "${_orig_dir}"_old ]]; then
  echo -n "Removing backup of original directory '${_orig_dir}_old'... "
  rm -rf "${_orig_dir}"_old
  echo "done"
fi
}

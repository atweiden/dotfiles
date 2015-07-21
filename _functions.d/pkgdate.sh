#!/bin/bash

# -----------------------------------------------------------------------------
# pkgdate: display version and build date of package
#          panda-git 20150613-1 (Thu 18 Jun 2015 04:45:03 PM PDT)
# -----------------------------------------------------------------------------

function pkgdate() {
if [[ -x /usr/bin/perl6 ]]; then
package=$1
printf "%b" "$(pacman -Q $package) ("
printf "%b" "$(pacman -Qi $package \
  | perl6 -ne '.say if m:s/Build Date/' \
  | perl6 -ne '.split(<:>, 2)[1].trim.say'))\n"
else
echo "Missing Perl6 binary at 「/usr/bin/perl6」"
fi
}

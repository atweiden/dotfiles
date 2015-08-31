#!/bin/bash

# -----------------------------------------------------------------------------
# packagemaintenance: check all binaries in /usr/bin for any with "not
#                     found" library links
#
# Source: https://bbs.archlinux.org/viewtopic.php?pid=1143655#p1143655
# -----------------------------------------------------------------------------

packagemaintenance() {
cd /usr/bin
for file in $(find .  -type f -executable -readable)
do
    ldd $file | grep "not found" >/dev/null && echo -n $file " links to an missing library " && \
    echo "(rebuild `pacman -Qq --owns $file`)"
done
}

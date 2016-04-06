#!/bin/bash
[[ -x /usr/bin/tint2 ]] && tint2 &
[[ -x /usr/bin/conky ]] && conky -qd &
[[ -x /usr/bin/volumeicon ]] && volumeicon &
[[ -x /usr/bin/nitrogen ]] && nitrogen --restore &
[[ -x /usr/bin/xautolock && -x /usr/bin/xlock ]] \
  && xautolock -secure -time 7 -locker "/usr/bin/xlock -mode blank" -detectsleep &
[[ -x /usr/bin/redshift ]] \
  && redshift -c ~/.config/redshift/redshift.conf &
[[ -x /usr/bin/pcmanfm ]] && pcmanfm -d &
[[ -x /usr/bin/valabattery ]] && (sleep 3 && valabattery) &
[[ -x /usr/bin/compton ]] && compton --config ~/.config/compton/compton.conf -b &
#compton -cCGb &
#(sleep 3 && /usr/bin/nm-applet --sm-disable) &
#xbacklight -set 100 &
#/usr/bin/synclient TouchpadOff=1 &
#fbxkb &

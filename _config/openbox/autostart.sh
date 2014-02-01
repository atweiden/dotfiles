#!/bin/bash
tint2 &
conky -q &
volumeicon &
batti &
nitrogen --restore &
xautolock -secure -time 7 -locker "/usr/bin/xlock -logoutButton 1 -logoutCmd slam -logoutButtonLabel 'Slam' -mode blank"  -detectsleep &
xflux -z 97210 > /dev/null 2>&1 &
pcmanfm -d &
#(sleep 3 && /usr/bin/nm-applet --sm-disable) &
#xcompmgr &
#xbacklight -set 100 &
#/usr/bin/synclient TouchpadOff=1 &
#fbxkb &

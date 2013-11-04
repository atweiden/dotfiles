#!/bin/bash
tint2 &
conky -q &
volumeicon &
batti &
nitrogen --restore &
xautolock -time 7 -locker "/usr/bin/xlock -mode pacman"
redshift -l 45.5778946:-122.779266 &
pcmanfm -d &
#(sleep 3 && /usr/bin/nm-applet --sm-disable) &
#xcompmgr &
#xbacklight -set 100 &
#/usr/bin/synclient TouchpadOff=1 &
#fbxkb &

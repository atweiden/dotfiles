#!/bin/bash
export BROWSER=firefox
export DE=openbox
[[ -x /usr/bin/xmodmap && -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
exec dbus-launch openbox-session

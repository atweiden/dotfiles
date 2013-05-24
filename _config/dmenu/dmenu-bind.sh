#!/bin/bash
exe=`dmenu_path | dmenu_run -fn 'Monospace-9:normal' -nb '#000000' -nf '#FFFFFF' -sb '#FFFFFF' -sf '#000000'` && eval "exec $exe"

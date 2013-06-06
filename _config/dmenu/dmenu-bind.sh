#!/bin/bash
exe=$(dmenu_run -fn 'Sans-9:normal' -nb '#000000' -nf '#FFFFFF' -sb '#498AC7' -sf '#000000') && eval "exec $exe"

#!/usr/bin/env bash

CMD="echo $HOME"

WID=$(xprop -root | grep "_NET_ACTIVE_WINDOW(WINDOW)"| awk '{print $5}')
xdotool windowfocus $WID
xdotool key ctrl+shift+t
wmctrl -i -a $WID
sleep 1
xdotool type --delay 1 --clearmodifiers "$CMD"
xdotool key Return
exit 0
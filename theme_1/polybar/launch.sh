#!/usr/bin/env bash

DIR="$HOME/.config/polybar"
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q menu-bar -c "$DIR"/config.ini &
polybar -q left-bar -c "$DIR"/config.ini &
polybar -q middle-bar -c "$DIR"/config.ini &
polybar -q right-bar -c "$DIR"/config.ini &

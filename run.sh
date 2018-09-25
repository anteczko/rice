#!/bin/bash
# Terminate already running bar instances
killall -q polybar
killall -q compton

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


compton --config ~/rice/files/compton.conf &
polybar tabs & sleep 1 &
polybar phantom &
polybar tabsSmall

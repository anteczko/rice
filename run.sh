#!/bin/bash
# Terminate already running bar instances
killall -q polybar
killall -q compton

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


#polybar tabs & sleep 1 &
#polybar phantom &
#polybar tabsSmall


polybar tabs &
while ! pidof polybar tabs >> /dev/null ;
do
sleep 1
done
polybar tabsSmall &
polybar phantom &
compton --config ~/rice/files/compton.conf

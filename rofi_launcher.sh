#!/bin/bash

scrot shot.jpg -q 44
convert -blur 0x8 shot.jpg blured.jpg
feh -F blured.jpg &
#feh -F shot.jpg &
rofi -show run
pkill -f "feh.*blured.jpg"
rm ./shot.jpg
rm ./blured.jpg

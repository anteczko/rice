#!/bin/bash

scrot shot.jpg -q 20
#convert -blur 0x8 shot.jpg blured.jpg
#ffmpeg -i shot.jpg -vf stereo3d=sbs2l blured.jpg
#convert shot.jpg -modulate 100,100,huerotate blured.jpg
#convert shot.jpg -channel r +10+10 blured.jpg
convert shot.jpg -colorspace gray shot.jpg
composite -stereo +10 shot.jpg shot.jpg blured.jpg
convert -blur 0x4 blured.jpg blured.jpg
#convert left right \( -clone 1 -set colorspace RGB -channel r -separate +channel \) \( -clone 0 -set colorspace RGB -channel g -separate +channel \) \( -clone 1 -set colorspace RGB -channel b -separate +channel \) -delete 0,1 -combine blured.jpg
feh -F blured.jpg &
#feh -F shot.jpg &
rofi -show run
pkill -f "feh.*blured.jpg"
rm ./shot.jpg
rm ./blured.jpg

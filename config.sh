#!/bin/bash

sudo rm ~/.config/i3/config
sudo cp ~/rice/files/i3_config ~/.config/i3/config
sudo rm ~/.config/polybar/config
sudo cp ~/rice/files/polybar_config ~/.config/polybar/config

i3-msg restart
#i3-msg reload

#!/bin/bash

USER_CONFIG_DIR="$HOME/.config/"

# delete config files
rm -rf "$USER_CONFIG_DIR"rofi
rm -rf "$USER_CONFIG_DIR"polybar
rm -rf "$USER_CONFIG_DIR"sxhkd
rm -rf "$USER_CONFIG_DIR"bspwm
rm -rf "$USER_CONFIG_DIR"picom

# install config files in user config dir & fonts
cp -r .fonts rofi polybar sxhkd bspwm picom "$USER_CONFIG_DIR"
# reload sxhkd
pkill -USR1 -x sxhkd
# reload bspwm
bspc wm -r 

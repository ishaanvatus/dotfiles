#!/bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

feh ~/pictures/wallpapers/ --recursive --randomize --bg-fill &
flameshot & 
statusbar &
picom &
dunst &
sxhkd &
urxvt &
exec dwm

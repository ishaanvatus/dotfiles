#!/bin/sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

feh ~/pictures/wallpapers/ --recursive --randomize --bg-fill &
picom --daemon &
urxvtd -q -o -f &
exec i3

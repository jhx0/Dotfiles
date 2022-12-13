#!/bin/sh

# Debian specific
sh /etc/X11/Xsession &

setxkbmap -layout de -variant nodeadkeys &
setxkbmap -option ctrl:nocaps &

xset s off &
xset s noblank &
xset -dpms &
xset b off &
xrdb -merge ~/.Xresources &

# Programs to launch
# xsetroot -cursor_name left_ptr &
# feh --bg-tile $HOME/Pictures/5010.png &

# WM's/DE's
# exec openbox-session
# exec $HOME/bin/dwm
# exec i3
exec startxfce4

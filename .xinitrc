setxkbmap -layout de -variant nodeadkeys &
xset s off &
xset b off &
xset -dpms &

xrdb -load $HOME/.Xresources &

#picom &
#tint2 &
sleep 2 && conky -c $HOME/.conky/.conkyrc-openbsd &

#exec dbus-launch --exit-with-session --sh-syntax openbox-session 
#exec dbus-launch --exit-with-session --sh-syntax i3
exec startxfce4

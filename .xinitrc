setxkbmap -layout de -variant nodeadkeys &
xset s off &
xset b off &
xset -dpms &

xrdb -load $HOME/.Xresources &

sleep 2 && conky -c $HOME/.conky/.conkyrc-openbsd &

exec startxfce4
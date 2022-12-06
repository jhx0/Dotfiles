#!/bin/sh

DIR='/tmp/lock'
ICON='lock.png'

mkdir -p $DIR

scrot $DIR/shot.png

convert -scale 10% -scale 1000% $DIR/shot.png $DIR/tmp.png
convert $DIR/tmp.png $HOME/bin/lock/$ICON -gravity center -composite $DIR/screen.png
i3lock -u -i $DIR/screen.png

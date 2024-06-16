#!/bin/sh

which sudo > /dev/null 2>&1
if [ "$?" -eq 1 ]; then
	echo "[ERROR] sudo not available!"
	exit 1
fi

sudo cp .bash* /root/
sudo cp -r .vim /root/
sudo cp .nanorc /root/
sudo cp .vimrc /root/
sudo mkdir -p /root/bin
sudo cp bin/pfetch /root/bin/

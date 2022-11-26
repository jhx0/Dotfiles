#!/bin/sh

cd $HOME/bin

echo "[INFO] Getting tools..."

git clone https://github.com/jhx0/booky.git
chmod +x booky/booky

git clone https://github.com/rilysh/cafe.git
chmod +x cafe/cafe

echo "[OK] Done!"

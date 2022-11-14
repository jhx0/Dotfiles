#!/bin/sh

DEST="/mnt/nas/Bookmarks/"
BOOKMARK="$HOME/.bookmarks"

echo "[INFO] Backing up bookmarks"
cp $BOOKMARK $DEST
echo "[OK] Done!"

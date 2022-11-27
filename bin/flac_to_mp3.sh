#!/bin/sh

BITRATE="320k"

echo "[INFO] Converting to mp3..."
find . -name "*.flac" -exec ffmpeg -i {} -ab $BITRATE -map_metadata 0 -id3v2_version 3 {}.mp3 \;
echo "[OK] Done."

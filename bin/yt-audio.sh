#!/bin/sh

PATH="/usr/local/bin:$PATH"

YTDLP='yt-dlp'
OPTIONS='--audio-quality 0 -x --audio-format mp3'


cd ~/Downloads
$YTDLP $OPTIONS $1

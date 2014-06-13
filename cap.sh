#!/bin/bash
filename=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 3 | head -n1).png
scrot -s ~/speedcap/$filename
scp ~/speedcap/$filename root@107.170.117.30:/var/cafedaydream/
url="http://cafedaydream.com/$filename"
echo $url | xclip -sel clip
rm ~/speedcap/$filename
chromium $url

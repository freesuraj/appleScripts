#!/bin/sh

url=""
while [ -z "$url" ]; do
searchresult=""
while [ -z "$searchresult" ]; do
rand=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-5};echo)
echo "$rand"
searchresult=$(googler -C -n 100 --np -x -w https://www.youtube.com "$rand" "nba")
done
urls=$(echo "$searchresult" | grep -o "https://www.youtube.com/watch?v=...........")
url=$(gshuf -e -n 1 $urls)
echo "url: $url"
done
# omxplayer -o hdmi $(youtube-dl -f mp4 -g "$url")
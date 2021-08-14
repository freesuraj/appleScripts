#!/bin/sh

# Reads the video_id from the input csv file, makes its youtube link and copies to clipboard

csv_file="/Users/suraj.pathak/Projects/Others/appleScripts/YoutubeAttack/USvideos.csv"
row="$1p"

sed -n $row $csv_file | while IFS=, read vid_id c2 c3 c4 c5 c6 c7 c8 c9 c10 c11; do echo "https://www.youtube.com/watch?v=$vid_id"; done



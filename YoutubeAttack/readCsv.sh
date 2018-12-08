#!/bin/sh

csv_file="testCsv.csv"

read header # read (and ignore) the first line
while IFS=, read -r vid_id c2 c3 c4 c5 c6 c7 c8 c9 c10 c11; do
    echo "$vid_id"
done < $csv_file
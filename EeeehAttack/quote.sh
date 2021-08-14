#!/bin/sh

COLOR[0]=red
COLOR[1]=lightblue
COLOR[2]=magenta
COLOR[3]=black
COLOR[4]=green

csv_file="/Users/suraj.pathak/Projects/Others/appleScripts/EeeehAttack/quotes.csv"
row="$1p"
number=$(echo "$(($1 - 1))")
sed -n $row $csv_file | while IFS=',' read author quote; do 
# echo "$quote by $author category $genre"; 
caption="“${quote}” \n\n-${author} \n\n#TMGQuoteAttack \n$number"
randCol=$[$RANDOM % ${#COLOR[@]}]
color=${COLOR[$randCol]}
font="Delius-Swash-Caps"
/usr/local/bin/convert -background $color -font $font -fill white  -pointsize 150 -size 3000x3000 -gravity Center  caption:"${caption}" $HOME/Desktop/test.jpeg 
/usr/local/bin/copyq write image/jpeg - < $HOME/Desktop/test.jpeg && /usr/local/bin/copyq select 0
done




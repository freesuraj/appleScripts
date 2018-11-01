#!/bin/sh

COLOR[0]=red
COLOR[1]=lightblue
COLOR[2]=purple
COLOR[3]=black
COLOR[4]=yellow

SWEAR[0]=Eeeeeeh
SWEAR[1]=Bhutrooo
SWEAR[2]=Yetroooo
SWEAR[3]=Ghantaaa
SWEAR[4]=Vejaaaaa

randSwear=$[$RANDOM % ${#SWEAR[@]}]
swear=${SWEAR[$randSwear]}

caption="${swear}\n ${1}"
randCol=$[$RANDOM % ${#COLOR[@]}]
color=${COLOR[$randCol]}
/usr/local/bin/convert -background $color  -fill white  -pointsize 80 -size 400x400 -gravity Center  caption:"${caption}" $HOME/Desktop/test.jpeg 
/usr/local/bin/copyq write image/jpeg - < $HOME/Desktop/test.jpeg && /usr/local/bin/copyq select 0
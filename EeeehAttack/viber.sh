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
SWEAR[5]=Gedaaaa
SWEAR[6]=La*oooo
SWEAR[7]=Mujiiiii
SWEAR[8]=Mulaaaaa
SWEAR[9]=Ghwaaaaak

randSwear=$[$RANDOM % ${#SWEAR[@]}]
swear=${SWEAR[$randSwear]}

caption="${swear}\n ${1} \n(#Eeehattack)"
randCol=$[$RANDOM % ${#COLOR[@]}]
color=${COLOR[$randCol]}
/usr/local/bin/convert -background $color  -fill white  -pointsize 60 -size 400x400 -gravity Center  caption:"${caption}" $HOME/Desktop/test.jpeg 
/usr/local/bin/copyq write image/jpeg - < $HOME/Desktop/test.jpeg && /usr/local/bin/copyq select 0
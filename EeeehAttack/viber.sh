#!/bin/sh

COLOR[0]=red
COLOR[1]=lightblue
COLOR[2]=magenta
COLOR[3]=black
COLOR[4]=green

SWEAR[0]="East to West, AD is the best !! ADmin starts with AD"
SWEAR[1]="Rajinamaa de, tike admin"
SWEAR[2]="andolan jaari chha. Maag Pura Gar!!"
SWEAR[3]="Global Warming is Real. This Admin IS NOT."
SWEAR[4]="Say NO to Tike Admin"
SWEAR[5]="CHANGE the admin now !!"
SWEAR[6]="Stop this Tyranny NOW !!"
SWEAR[7]="Shive Chive sab K9 ke Rakhaute"
SWEAR[8]="Admin Sucks !! Resign Now"
SWEAR[9]="K9 Sucks"

randSwear=$[$RANDOM % ${#SWEAR[@]}]
swear=${SWEAR[$randSwear]}

caption="${swear} \n\n#QuoteAttack"
randCol=$[$RANDOM % ${#COLOR[@]}]
color=${COLOR[$randCol]}
font="Delius-Swash-Caps"
/usr/local/bin/convert -background $color -font $font -fill white  -pointsize 200 -size 2000x1200 -gravity Center  caption:"${caption}" $HOME/Desktop/test.jpeg 
/usr/local/bin/copyq write image/jpeg - < $HOME/Desktop/test.jpeg && /usr/local/bin/copyq select 0
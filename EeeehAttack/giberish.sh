#!/bin/sh
#

val=$(cat /dev/urandom | env LC_CTYPE=C tr -cd 'a-f0-9' | head -c 32)
echo "#$val" | pbcopy
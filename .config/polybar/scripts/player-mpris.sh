#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [[ "$player_status" == *"Playing"* ]]; then
#    echo " $(playerctl metadata artist 2> /dev/null | sed 's/^\(.\{42\}\).*/\1/g') - $(playerctl metadata title 2> /dev/null | sed 's/^\(.\{42\}\).*/\1/g')"
    echo " $(playerctl metadata title 2> /dev/null | sed 's/^\(.\{42\}\).*/\1/g')"
elif [[ "$player_status" == *"Paused"* ]]; then
#    echo " $(playerctl metadata artist 2> /dev/null | sed 's/^\(.\{42\}\).*/\1/g') - $(playerctl metadata title 2> /dev/null | sed 's/^\(.\{42\}\).*/\1/g')"
    echo " $(playerctl metadata title 2> /dev/null | sed 's/^\(.\{42\}\).*/\1/g')"
else
    echo ""
fi

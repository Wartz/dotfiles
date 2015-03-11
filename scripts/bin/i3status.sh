#!/bin/sh


i3status | while :
do
        read line
        TODO="$(tail -3 /home/joe/TODO)"
        echo ""${TODO}" | $line" || exit 1
done

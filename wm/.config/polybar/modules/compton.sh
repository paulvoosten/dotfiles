#!/usr/bin/bash
icon=

if pgrep -x "compton" > /dev/null
then
    echo "%{F#a1b56c}$icon"
else
    echo "%{F#585858}$icon"
fi

#!/usr/bin/bash
if pgrep -x "compton" > /dev/null; then
    killall compton
else
    compton -b
fi

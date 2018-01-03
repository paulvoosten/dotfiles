#!/bin/bash
if pgrep -x compton > /dev/null; then
    pkill -x compton
else
    compton -b
fi

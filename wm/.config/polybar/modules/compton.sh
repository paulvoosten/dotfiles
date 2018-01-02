#!/bin/bash
icon=
color=$(xrdb -query|grep 'color8:'|cut -f2)

if pgrep -x compton > /dev/null; then
    color=$(xrdb -query|grep 'color2:'|cut -f2)
fi

echo "%{F$color}$icon"

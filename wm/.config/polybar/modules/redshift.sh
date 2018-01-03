#!/bin/bash
icon=
color=$(xrdb -query|grep 'color16:'|cut -f2)

pgrep -x redshift &> /dev/null

if [[ $? -eq 0 ]]; then
    temp=$(redshift -p 2> /dev/null|grep temp|cut -d' ' -f3)
    temp=${temp//K/}
fi

if [[ -z $temp ]]; then
    color=$(xrdb -query|grep 'color8:'|cut -f2)
elif [[ $temp -ge 5000 ]]; then
    color=$(xrdb -query|grep 'color4:'|cut -f2)
elif [[ $temp -ge 4000 ]]; then
    color=$(xrdb -query|grep 'color3:'|cut -f2)
fi

echo %{F$color}$icon

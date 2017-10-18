#! /bin/sh
icon=

pgrep -x redshift &> /dev/null

if [[ $? -eq 0 ]]; then
    temp=$(redshift -p 2> /dev/null|grep temp|cut -d' ' -f3)
    temp=${temp//K/}
fi

if [[ -z $temp ]]; then
    echo "%{F#585858}$icon"
elif [[ $temp -ge 5000 ]]; then
    echo "%{F#7cafc2}$icon"
elif [[ $temp -ge 4000 ]]; then
    echo "%{F#f7ca88}$icon"
else
    echo "%{F#dc9656}$icon"
fi

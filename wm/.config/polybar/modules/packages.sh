#! /bin/sh
pac=$(checkupdates|wc -l)
aur=$(cower -u|wc -l)
check=$((pac + aur))

if [[ "$check" != "0" ]]; then
    echo "$pac $aur"
else
    echo 'Up to date'
fi
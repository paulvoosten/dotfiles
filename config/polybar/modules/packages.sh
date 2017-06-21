#! /bin/sh
pac=$(checkupdates|wc -l)
aur=$(cower -u|wc -l)
check=$((pac + aur))

if [[ "$check" != "0" ]]; then
    echo "%{F#585858}%{F-} $pac $aur"
else
   echo "%{F#585858}%{F-} Up to date"
fi
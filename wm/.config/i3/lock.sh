#!/usr/bin/bash
image=/tmp/screen.png
scrot $image
convert $image -scale 10% -scale 1000% $image
i3lock -e -u -n -f -i $image
rm $image

#! /bin/bash
image=/tmp/screen.png
icon=$HOME/Pictures/lock.png
scrot $image
convert $image -scale 10% -scale 1000% $image

# if [[ -f $icon ]]
# then
#     # placement x/y
#     px=0
#     py=0
#     # lockscreen image info
#     r=$(file $icon | grep -o '[0-9]* x [0-9]*')
#     rx=$(echo $r | cut -d' ' -f 1)
#     ry=$(echo $r | cut -d' ' -f 3)

#     sr=$(xrandr --query | grep ' connected' | sed 's/primary //' | cut -f3 -d' ')
#     for res in $sr
#     do
#         # monitor position/offset
#         srx=$(echo $res | cut -d'x' -f 1)                   # x pos
#         sry=$(echo $res | cut -d'x' -f 2 | cut -d'+' -f 1)  # y pos
#         srox=$(echo $res | cut -d'x' -f 2 | cut -d'+' -f 2) # x offset
#         sroy=$(echo $res | cut -d'x' -f 2 | cut -d'+' -f 3) # y offset
#         px=$(($srox + $srx/2 - $rx/2))
#         py=$(($sroy + $sry/2 - $ry/2))

#         convert $image $icon -geometry +$px+$py -composite -matte  $image
#     done
# fi

#convert $image $icon -gravity center -composite -matte $image
i3lock -e -u -n -f -i $image
#i3lock -e -u -n -i /tmp/screen.png
rm $image
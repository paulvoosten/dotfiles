#!/bin/bash
pac=$(pacman -Qu|wc -l)
aur=$(yay -Qua|wc -l)
check=$((pac + aur))

if [[ "$check" != "0" ]]; then
    echo " $pac $aur"
fi

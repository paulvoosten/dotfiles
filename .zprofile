#!/bin/zsh
[[ -f ~/.envvars ]] && . ~/.envvars

if [ -z $DISPLAY ]
then
    [ "$(tty)" = "/dev/tty1" ] && exec startx
    [ "$(tty)" = "/dev/tty2" ] && exec sway
fi

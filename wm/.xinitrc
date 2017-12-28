#!/usr/bin/bash
[[ -f /etc/X11/xinit/.Xresources ]] && xrdb -merge /etc/X11/xinit/.Xresources

[[ -f /etc/X11/xinit/.Xmodmap ]] && xmodmap /etc/X11/xinit/.Xmodmap

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

[[ -f ~/.xprofile ]] && . ~/.xprofile

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

exec bspwm

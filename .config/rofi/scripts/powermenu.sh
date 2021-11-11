#!/bin/bash
if [ -z "$@" ]; then
    echo -en "Logout\0icon\x1fsystem-log-out\n"
    echo -en "Hibernate\0icon\x1fsystem-suspend\n"
    echo -en "Reboot\0icon\x1fsystem-reboot\n"
    echo -en "Shutdown\0icon\x1fsystem-shutdown\n"
else
    case "$1" in
        'Hibernate')
            systemctl hibernate;;
        'Logout')
            bspc quit;;
        'Reboot')
            systemctl reboot;;
        'Shutdown')
            systemctl poweroff;;
    esac
fi

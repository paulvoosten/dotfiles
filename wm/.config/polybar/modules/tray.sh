#!/bin/bash
if pgrep -x stalonetray > /dev/null; then
    pkill -x stalonetray
else
    stalonetray &
fi

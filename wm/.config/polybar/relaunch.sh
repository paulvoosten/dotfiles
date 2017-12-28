#!/usr/bin/bash
# terminate already running instances
killall -q polybar
# wait until running instances have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done
# launch bars
polybar -r top &

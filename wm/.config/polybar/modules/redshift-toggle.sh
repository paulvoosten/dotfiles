#!/bin/bash
if pgrep -x redshift > /dev/null; then
    pkill -x redshift
else
    redshift &> /dev/null &
fi

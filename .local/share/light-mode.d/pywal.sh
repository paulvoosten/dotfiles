#!/bin/bash
THEME=base16-default
wal -f $THEME -l -o ~/.config/wal/reload &>/dev/null
wal -f $THEME &>/dev/null
~/.local/bin/pywalfox update &>/dev/null
wal -f $THEME -l &>/dev/null

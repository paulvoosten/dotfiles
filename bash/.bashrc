#!/bin/bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source relevant files
. ~/.bash_prompt
. ~/.aliases

# Other stuff
shopt -s checkwinsize
stty -ixon

# Restore wal colorscheme
(cat ~/.cache/wal/sequences &)

# Add color support for TTYs
. ~/.cache/wal/colors-tty.sh

. /usr/share/nvm/init-nvm.sh

#! /bin/sh
[ ! -s ~/.config/mpd/pid ] && mpd

export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export BSPWM_STATE="${XDG_CACHE_HOME}/bspwm/state.json"
export EDITOR="vim"

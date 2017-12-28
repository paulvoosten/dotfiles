#!/usr/bin/bash
# environment variables
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export BSPWM_STATE="${XDG_CACHE_HOME}/bspwm/state.json"
export EDITOR='nvim'

# monitors
case "${HOSTNAME}" in
    'arch-home')
        export MONITORS_PRIMARY='DP-0'
        export MONITORS_SECONDARY='DP-2'
        ;;
    'arch-adcalls')
        export MONITORS_PRIMARY='HDMI-1'
        export MONITORS_SECONDARY='VGA-1'
        ;;
esac

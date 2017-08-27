#! /bin/sh
[ ! -s ~/.config/mpd/pid ] && mpd

# environment variables
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export BSPWM_STATE="${XDG_CACHE_HOME}/bspwm/state.json"
export EDITOR='nvim'

# monitors
case "${HOSTNAME}" in
    'arch-home')
        PRIMARY_MONITOR='DP-0'
        SECONDARY_MONITOR='DP-2'
        ;;
    'arch-adcalls')
        PRIMARY_MONITOR='HDMI-1'
        SECONDARY_MONITOR='VGA-1'
        ;;
esac

export PRIMARY_MONITOR
export SECONDARY_MONITOR

# colors
case "${THEME}" in
    *)
        COLORS_BASE00='#181818'
        COLORS_BASE01='#282828'
        COLORS_BASE02='#383838'
        COLORS_BASE03='#585858'
        COLORS_BASE04='#B8B8B8'
        COLORS_BASE05='#D8D8D8'
        COLORS_BASE06='#E8E8E8'
        COLORS_BASE07='#F8F8F8'
        COLORS_BASE08='#AB4642'
        COLORS_BASE09='#DC9656'
        COLORS_BASE0A='#F7CA88'
        COLORS_BASE0B='#A1B56C'
        COLORS_BASE0C='#86C1B9'
        COLORS_BASE0D='#7CAFC2'
        COLORS_BASE0E='#BA8BAF'
        COLORS_BASE0F='#A16946'
        ;;
esac

export COLORS_BASE00
export COLORS_BASE01
export COLORS_BASE02
export COLORS_BASE03
export COLORS_BASE04
export COLORS_BASE05
export COLORS_BASE06
export COLORS_BASE07
export COLORS_BASE08
export COLORS_BASE09
export COLORS_BASE0A
export COLORS_BASE0B
export COLORS_BASE0C
export COLORS_BASE0D
export COLORS_BASE0E
export COLORS_BASE0F

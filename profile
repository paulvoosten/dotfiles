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
        MONITORS_PRIMARY='DP-0'
        MONITORS_SECONDARY='DP-2'
        ;;
    'arch-adcalls')
        MONITORS_PRIMARY='HDMI-1'
        MONITORS_SECONDARY='VGA-1'
        ;;
esac

export MONITORS_PRIMARY
export MONITORS_SECONDARY

# colors
case "${THEME}" in
    'base16-ocean')
        COLORS_BASE00='#2B303B'
        COLORS_BASE01='#343D46'
        COLORS_BASE02='#4F5B66'
        COLORS_BASE03='#65737E'
        COLORS_BASE04='#A7ADBA'
        COLORS_BASE05='#C0C5CE'
        COLORS_BASE06='#DFE1E8'
        COLORS_BASE07='#EFF1F5'
        COLORS_BASE08='#BF616A'
        COLORS_BASE09='#D08770'
        COLORS_BASE0A='#EBCB8B'
        COLORS_BASE0B='#A3BE8C'
        COLORS_BASE0C='#96B5B4'
        COLORS_BASE0D='#8FA1B3'
        COLORS_BASE0E='#B48EAD'
        COLORS_BASE0F='#AB7967'
        ;;
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

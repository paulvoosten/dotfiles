#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
source ~/.bash_prompt

# other stuff
shopt -s checkwinsize
stty -ixon

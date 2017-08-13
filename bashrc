#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux

# TMUX
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi

# Source relevant files
source ~/.bash_prompt
source ~/.aliases

# Other stuff
shopt -s checkwinsize
stty -ixon

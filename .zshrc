# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/home/paul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -Uz add-zsh-hook vcs_info

add-zsh-hook precmd vcs_info
add-zsh-hook precmd set_prompt

# Configure git
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' ?'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats '%F{yellow}%b%f%F{blue}%m%f'
zstyle ':vcs_info:git:*' actionformats '%F{yellow}%b%f(%F{red}%a%f)%F{blue}%m%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-extra

+vi-git-extra() {
  local prompt=''
  # uncommited files
  ! $(git diff --quiet --ignore-submodules --cached) && prompt+='+'
  # unstaged files
  ! $(git diff-files --quiet --ignore-submodules --) && prompt+='!'
  # untracked files
  [ -n "$(git ls-files --others --exclude-standard)" ] && prompt+='?'
  # stashed files
  $(git rev-parse --verify refs/stash &> /dev/null) && prompt+='$'
  [ -n "$prompt" ] && prompt=" $prompt"
  hook_com[misc]=$prompt
}

# Restore wal colorscheme
(cat ~/.cache/wal/sequences &)

# Add collor support for TTYs
. ~/.cache/wal/colors-tty.sh

# Add aliases
. ~/.aliases

# Other stuff
stty -ixon

# Prompt
set_prompt() {
    if [[ "$SSH_TTY" ]]; then
        host_color='blue'
    else
        host_color='white'
    fi

    PS1="%B%F{green}%D{%H:%M:%S}%f%b %B%F{%(!.red.white)}%n%f%b%B%F{green}@%f%b%B%F{$host_color}%M:%f%b%B%F{green} %~%f%b %B${vcs_info_msg_0_}%b
%F{%(?.green.red)}%(!.#.$)%f "
    RPS1="%B%(?..%F{red}%? ﬋%f)%b"

    PS2="%F{%(?.green.red)}>%f "
}


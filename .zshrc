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
unsetopt MULTIBYTE

autoload -Uz add-zsh-hook vcs_info

add-zsh-hook precmd vcs_info
add-zsh-hook precmd set_prompt

# Configure git
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' ?'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats '%F{white}󰊢%f %F{yellow}%b%f%F{blue}%m%f'
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
  [ -n "$prompt" ] && prompt=" [$prompt]"
  hook_com[misc]=$prompt
}

# Keybinds
typeset -g -A key

bindkey "^?"    backward-delete-char    # Backspace
bindkey "^[[H"  beginning-of-line       # Home
bindkey "^[[5~" up-line-or-history      # PageUp
bindkey "^[[3~" delete-char             # Delete
bindkey "^[[F"  end-of-line             # End
bindkey "^[[6~" down-line-or-history    # PageDown
bindkey "^[[A"  up-line-or-search       # Up
bindkey "^[[C"  forward-char            # Right
bindkey "^[[B"  down-line-or-search     # Down
bindkey "^[[D"  backward-char           # Left

bindkey "^[[1;3C" forward-word          # Alt + left
bindkey "^[[1;5C" forward-word          # Ctrl + left
bindkey "^[[1;3D" backward-word         # Alt + right
bindkey "^[[1;5D" backward-word         # Ctrl + right

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

    PS1="%B%F{green}[%D{%T}] %F{%(!.red.white)}%n%F{green}@%F{$host_color}%M:%F{green} %~ ${vcs_info_msg_0_}%F{green}
%F{%(?.green.red)}%(!.#.$)%b %F{default}"
    RPS1="%(?..%B%F{red}%? ﬋%f%b)"

    PS2="%B%F{%(?.green.red)}>%f%b "
}


#!/bin/bash

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# disable the bell
set bell-style visible

# expand the history size
export HISTFILESIZE=100000
export HISTSIZE=5000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command
shopt -s checkwinsize

# ignore case on auto-completion
bind 'set completion-ignore-case on'

# show auto-completion list automatically, without double tab
bind 'set show-all-if-ambiguous on'

# set shortcuts for history completion
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# enable color support of ls and grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# alias for ls commands
alias ll="ls -Alh"
alias lsd="ls -AlF | grep /$"

# alias for grep commands
alias h='history | grep '
alias p='ps aux | grep '
alias f='find . | grep '

# alias to show space usage
alias diskspace="du -S | sort -n -r | less"

# set 256 colors
export TERM=xterm-256color
export color_prompt=yes

# set color prompt
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;36m\]\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\n\$ '

# set color theme
export BASE16_SHELL=$HOME/.config/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# run tmux
[[ -z "$TMUX" ]] && eval "tmux new-session -A -s main"
base16_eighties

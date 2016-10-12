#!/bin/bash

# Enable bash programmable completion features
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Disable the bell
set bell-style visible

# Expand the history size
export HISTFILESIZE=100000
export HISTSIZE=5000

# Cause bash to append to history instead of overwriting it
PROMPT_COMMAND='history -a'

# Ignore case on auto-completion
bind 'set completion-ignore-case on'

# Show auto-completion list automatically, without double tab
bind 'set show-all-if-ambiguous on'

# Set shortcuts for history completion
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Alias for ls commands
alias ll="ls -Alh"
alias lsd="ls -AlF | grep /$"

# Alias for grep commands
alias h='history | grep '
alias p='ps aux | grep '
alias f='find . | grep '

# Alias to show space usage
alias diskspace="du -S | sort -n -r | less"

# Set 256 colors
export TERM=xterm-256color

# Set color prompt
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;36m\]\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\n\$ '

# Set color theme
export BASE16_SHELL=$HOME/.config/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_monokai

# Set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"


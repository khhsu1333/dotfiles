# ls alias
alias ll="ls -Alh"
alias lsd="ls -AlF | grep /$"

# Show disk usage
alias diskspace="du -S | sort -n -r | less"

# Set 256 colors
export TERM=xterm-256color

# Set color prompt
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;36m\]\h\[\033[00m\]:[\[\033[01;34m\]\w\[\033[00m\]]\$ '

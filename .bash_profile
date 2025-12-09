# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
    exec sway
fi

. "$HOME/.cargo/env"

# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
# if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
#     exec startx
# fi

. "$HOME/.cargo/env"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/savantshuia/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/savantshuia/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

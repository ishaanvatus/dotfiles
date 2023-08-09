#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export EDITOR=nvim

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='nvim'
alias vim='nvim'
alias sxiv='devour nsxiv'

PROMPT_COMMAND='prompt_status="$?"; if [[ $prompt_status == "0" ]]; then prompt_status=; fi'

PS1='$prompt_status\[\e[0;1;36m\]\u\[\e[0;1;2;97m\]@\[\e[0;1;31m\]\h\[\e[0m\][\[\e[0;32m\]\W\[\e[0m\]]\[\e[0;1;2;97m\]$ \[\e[0m\]'


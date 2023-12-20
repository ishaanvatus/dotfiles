
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export EDITOR=nvim
export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man
export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info
export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias vi='nvim'
alias sxiv='swallow nsxiv'
alias zathura='swallow zathura'
PROMPT_COMMAND='prompt_status="$?"; if [[ $prompt_status == "0" ]]; then prompt_status=; fi'
PS1='$prompt_status\[\e[0;1;36m\]\u\[\e[0;1;2;97m\]@\[\e[0;1;31m\]\h\[\e[0m\][\[\e[0;32m\]\W\[\e[0m\]]\[\e[0;1;2;97m\]\n$ \[\e[0m\]'

[ -f "/home/ishaan/.ghcup/env" ] && source "/home/ishaan/.ghcup/env" # ghcup-env

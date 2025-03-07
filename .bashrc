#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export EDITOR=nvim
export GIT_EDITOR=nvim
export MANPAGER='nvim +Man!'
export BROWSER='librewolf'
export HISTSIZE= 
export HISTFILESIZE=
#https://tug.org/texlive/quickinstall.html native LaTeX install
export MANPATH=/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH 
export INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH
export PATH=/usr/local/texlive/2024/bin/x86_64-linux:$PATH
# export PATH=/var/lib/flatpak/exports/bin:$PATH
complete -d cd
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias vi='nvim'
alias sxiv='swallow nsxiv'
alias zathura='zathura'
PROMPT_COMMAND='prompt_status="$?"; if [[ $prompt_status == "0" ]]; then prompt_status=; fi'
PS1='$prompt_status\[\e[0;1;36m\]\u\[\e[0;1;2;97m\]@\[\e[0;1;31m\]\h\[\e[0m\][\[\e[0;32m\]\W\[\e[0m\]]\[\e[0;1;2;97m\]\n$ \[\e[0m\]'
source /etc/profile.d/modules.sh
module load mpi/openmpi-x86_64
# #https://www.haskell.org/ghcup/ for instructions
# [ -f "/home/ishaan/.ghcup/env" ] && source "/home/ishaan/.ghcup/env" # ghcup-env
. "$HOME/.cargo/env"

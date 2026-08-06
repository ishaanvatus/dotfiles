#!/bin/sh

export EDITOR=nvim
export BROWSER=librewolf
export GIT_EDITOR=nvim
export HISTSIZE= 
export HISTFILESIZE=

export MANPATH=/usr/local/texlive/2026/texmf-dist/doc/man:$MANPATH 
export INFOPATH=/usr/local/texlive/2026/texmf-dist/doc/info:$INFOPATH
export GOPATH=$HOME/.go
export PATH=/usr/local/texlive/2026/bin/x86_64-linux:$PATH
export PATH=$PATH:$GOPATH/bin
export PATH="${PATH}:${HOME}/.local/bin/"

export QT_QPA_PLATFORMTHEME=qt6ct
export GTK_THEME=Adwaita:dark

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

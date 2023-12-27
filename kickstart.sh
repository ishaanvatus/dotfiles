#!/bin/bash

echo "remember to get latest LaTeX and Haskell" &&
mkdir desktop  documents  downloads  games  git  music  pictures  programs  videos &&
sudo pacman -Syu stow xdg-user-dirs &&
xdg-user-dirs-update

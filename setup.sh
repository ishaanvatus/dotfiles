#!/bin/sh

sudo dnf install iwlwifi-mvm-firmware sway fuzzel waybar sddm stow git ranger neovim mpv neofetch foot keepassxc qbittorrent
rm .bashrc
rm .gitconfig
sudo systemctl enable sddm
sudo systemctl set-default graphical.target
mkdir desktop documents downloads music pictures videos
stow .

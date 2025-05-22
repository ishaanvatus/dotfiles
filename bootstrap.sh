#!/bin/sh

cd ~
# make sure system is up to date
sudo dnf upgrade --refresh
## rpmfusion 
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
sudo dnf group install multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf install intel-media-driver
# packages
sudo dnf install i3 chromium qbittorrent gimp mpv iwlwifi-mvm-firmware NetworkManager-wifi flameshot rxvt-unicode xdg-user-dirs xev xmodmap xorg-x11-server-Xorg xorg-x11-server-Xwayland xorg-x11-xinit xrdb p7zip p7zip-doc p7zip-plugins feh htop hwinfo fastfetch libexif-devel libX11-devel stow neovim flatpak rofi ImageMagick
# librewolf
curl -fsSL https://repo.librewolf.net/librewolf.repo | pkexec tee /etc/yum.repos.d/librewolf.repo
sudo dnf install librewolf
# sanity check for pgp/gpg keys
sudo dnf upgrade --refresh
# # basic setup
# mkdir desktop documents downloads music pictures videos
# xdg-user-dirs-update
# 7z x Mononoki.zip -oMononoki
# mkdir ~/.local/share/fonts
# mv Mononoki ~/.local/share/fonts/
# fc-cache
# # stow stuff
# git clone https://github.com/ishaanvatus/dotfiles .dotfiles
# cd .dotfiles
# stow .
echo "add github ssh-keys and clone dotfiles via ssh after reboot"
sleep 5s
reboot

#!/bin/sh

sudo dnf upgrade --refresh

## rpm fusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
sudo dnf install @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf install intel-media-driver 

## flatpak
sudo dnf install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

## browser
curl -fsSL https://repo.librewolf.net/librewolf.repo | pkexec tee /etc/yum.repos.d/librewolf.repo
sudo dnf install librewolf

sudo dnf upgrade --refresh

## essentials
sudo dnf install 7z cowsay cups ffmpegthumbnailer fortune-mod fuzzel gimp gimp-resynthesizer gnome-themes-extra grim gutenprint gutenprint-devel hplip ImageMagick imlib2-devel install iwlwifi-mvm-firmware kanshi keepassxc libexif-devel libXft-devel light lxappearance lxpolkit mpv NetworkManager-tui NetworkManager-wifi pamixer pavucontrol perl-core playerctl python3-setuptools qbittorrent qt5ct qt6ct slurp stow strawberry sway terminus-fonts-console thunar thunderbird tlp torbrowser-launcher vlc waybar wdisplays xdg-user-dirs xsane zathura zathura-pdf-mupdf 
sudo dnf remove yt-dlp
sudo dnf upgrade --refresh

mkdir ~/documents ~/downloads ~/music ~/pictures ~/videos ~/.config ~/.software ~/src

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
sudo dnf install 7z blueman cowsay cups ffmpegthumbnailer foliate fortune-mod fuzzel gimp gimp-resynthesizer gnome-themes-extra grim gutenprint gutenprint-devel hplip ImageMagick imlib2-devel install install iwlwifi-mvm-firmware kanshi keepassxc libexif-devel libXft-devel light lxappearance lxpolkit lz4-devel mpv neovim NetworkManager-tui NetworkManager-wifi nmap pamixer pandoc pavucontrol perl-core playerctl protontricks python3-setuptools qbittorrent qt5ct qt6ct slurp steam stow strawberry sway terminus-fonts-console thunar thunderbird tlp torbrowser-launcher vlc waybar wayland-devel wayland-protocols-devel wdisplays xdg-user-dirs xsane zathura zathura-pdf-mupdf
sudo dnf remove yt-dlp
sudo dnf install @virtualization
sudo usermod -a -G libvirt $(whoami)
sudo dnf config-manager addrepo --from-repofile="https://download.docker.com/linux/fedora/docker-ce.repo"
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo usermod -a -G docker $(whoami)
sudo dnf upgrade --refresh
mkdir ~/documents ~/downloads ~/music ~/pictures ~/videos ~/.config ~/.software ~/src

#!/bin/sh

sudo dnf upgrade --refresh
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
sudo dnf group install multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf install intel-media-driver
sudo dnf install ImageMagick NetworkManager-wifi chromium fastfetch feh flameshot flatpak gimp htop hwinfo i3 iwlwifi-mvm-firmware keepassxc libX11-devel libexif-devel mpv neovim p7zip p7zip-doc p7zip-plugins picom qbittorrent rofi rxvt-unicode sddm stow tlp xdg-user-dirs xev xmodmap xorg-x11-server-Xorg xorg-x11-server-Xwayland xorg-x11-xinit xrdb qutebrowser torbrowser-launcher thunderbird HandBrake-gui HandBrake
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
curl -fsSL https://repo.librewolf.net/librewolf.repo | pkexec tee /etc/yum.repos.d/librewolf.repo
sudo dnf install librewolf
sudo dnf upgrade --refresh
mkdir ~/desktop ~/documents ~/downloads ~/music ~/pictures ~/videos ~/.config ~/.software
rm ~/.bashrc 
rm ~/.bash_profile
7z x ~/.dotfiles/Mononoki.zip -oMononoki
mkdir -p ~/.local/share/fonts
mv Mononoki ~/.local/share/fonts
fc-cache
stow .
xdg-user-dirs-update
sudo systemctl set-default graphical.target
sudo systemctl enable tlp
sudo systemctl enamle sddm
echo "add github ssh-keys and reclone dotfiles via ssh after rebooting"

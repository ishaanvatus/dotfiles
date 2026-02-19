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
sudo dnf install 7z blueman chromium chromium cowsay cups default-fonts-cjk default-fonts-cjk dnf ffmpegthumbnailer file-roller file-roller foliate fortune-mod freerdp fuzzel gammastep gimp gimp-resynthesizer gnome-themes-extra golang grim gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-free-extras gutenprint gutenprint-devel gvfs-mtp gvfs-mtp gvfs-mtp gvfs-smb gvfs-smb hplip htop ImageMagick imlib2-devel install install install iwlwifi-mvm-firmware kanshi keepassxc libexif-devel libjxl-utils libjxl-utils libreoffice libXft-devel light lxappearance lxpolkit lz4-devel mediawriter moreutils mpv mpv-mpris neovim network-manager-applet NetworkManager-tui NetworkManager-wifi nmap pamixer pandoc pavucontrol perl-core playerctl potrace protontricks python3-setuptools qbittorrent qt5ct qt6ct slurp steam steam stow strawberry sudo sway terminus-fonts-console thunar thunar-archive-plugin thunar-archive-plugin thunderbird tlp torbrowser-launcher vlc waybar wayland-devel wayland-protocols-devel wdisplays xdg-user-dirs xsane zathura zathura-pdf-mupdf

ssh-keygen -t ed25519 -C "34275616+ishaanvatus@users.noreply.github.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat .ssh/id_ed25519.pub 

sudo dnf remove yt-dlp
sudo dnf install @virtualization
sudo usermod -a -G libvirt $(whoami)
sudo dnf config-manager addrepo --from-repofile="https://download.docker.com/linux/fedora/docker-ce.repo"
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo usermod -a -G docker $(whoami)
sudo dnf upgrade --refresh
mkdir -p ~/documents ~/downloads ~/music ~/pictures ~/videos ~/.config/xfce4 ~/.software ~/src ~/.local/bin 

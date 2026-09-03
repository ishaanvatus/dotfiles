#!/bin/bash
set -eo pipefail

PKGS="7z adw-gtk3-theme adwaita-icon-theme android-tools ardour9 aria2 azote blender blueman btop cage calibre chromium cups ddcutil default-fonts-cjk easytag expat-devel faketime fastfetch ffmpeg-devel ffmpegthumbnailer file-roller flatpak foliate freerdp fuse fuse-libs fuzzel gammastep gimp gimp-resynthesizer glfw-devel golang google-noto-color-emoji-fonts google-noto-emoji-fonts gparted grim grimpicker gstreamer1-devel gstreamer1-plugins-bad-free-extras gstreamer1-plugins-base-devel gtk-doc gtk3-devel gutenprint gutenprint-cups gutenprint-devel gvfs gvfs-mtp gvfs-smb HandBrake HandBrake-gui hplip htop hugin hw-probe igt-gpy-tools ImageMagick imlib2-devel inkscape inxi iwlwifi-mvm-firmware kanshi kdenlive keepassxc kernel-devel krita libavif-devel libddcutil libddcutil-devel libdeflate-devel libexif-devel libheif-devel libjpeg-devel libjxl-devel libjxl-utils libreoffice librsvg2-devel libtiff-devel libunrar libwebp-devel libXcursor-devel libXft-devel libXi-devel libXinerama-devel libxkbcommon-devel libXrandr-devel light lpf-spotify-client lshw lz4-devel mate-polkit mediawriter mesa-demos meson mkvtoolnix mkvtoolnix-gui moreutils mpv mpv-mpris nasm ncdu network-manager-applet NetworkManager-tui NetworkManager-wifi ninja-build nmap nvim opus-tools oxygen-cursor-themes pamixer pandoc parallel pavucontrol pdfarranger perl-core perl-File-MimeInfo playerctl plymouth-theme-spinfinity potrace protontricks python3-setuptools python3-tkinter qbittorrent qpwgraph qt5-qtbase-devel qt5ct qt6-qtbase-devel qt6-qttools-devel qt6ct qutebrowser rpi-imager sddm-wayland-sway slurp sox speech-dispatcher sqlitebrowser steam stow strawberry sway swaylock terminus-fonts-console thunar thunar-archive-plugin thunar-volman tlp torbrowser-launcher tree-sitter-cli unrar vlc vulkan-tools waybar waydroid wayland-devel wayland-protocols-devel wdisplays weechat wl-clipboard wofi xdg-user-dirs xsane zathura zathura-cb zathura-pdf-mupdf"

mkdir -p ~/desktop ~/documents ~/downloads ~/music ~/pictures/screenshots/mpv ~/public ~/templates ~/videos/recordings ~/src ~/.themes
mkdir -p ~/.local/bin ~/.local/src ~/.local/share/applications ~/.local/share/icons  ~/.local/share/fonts
mkdir -p ~/.config/xfce4
tar xf ~/.dotfiles/Mononoki.tar.xz -C ~/.local/share/fonts/
tar xf ~/.dotfiles/Rosario.tar.xz -C ~/.local/share/fonts/

sudo dnf config-manager setopt max_parallel_downloads=8 fastestmirror=True
sudo dnf -y upgrade --refresh

# Laptop stays on when closing lid
sudo mkdir -p /etc/systemd/logind.conf.d/
echo "[Login]" | sudo tee -a  /etc/systemd/logind.conf.d/99-laptop-server.conf
echo "HandleLidSwitch=ignore" | sudo tee -a  /etc/systemd/logind.conf.d/99-laptop-server.conf
echo "HandleLidSwitchExternalPower=ignore" | sudo tee -a  /etc/systemd/logind.conf.d/99-laptop-server.conf
echo "HandleLidSwitchDocked=ignore" | sudo tee -a /etc/systemd/logind.conf.d/99-laptop-server.conf

# /etc/vconsole.conf
echo 'KEYMAP="us"' | sudo tee /etc/vconsole.conf
echo 'FONT="ter-132b"' | sudo tee -a /etc/vconsole.conf

# udev rules for vial for my Unicomp Mini-M
echo "# Unicomp Mini M" | sudo tee -a /etc/udev/rules.d/99-unicomp-mini-m.rules
echo "KERNEL==\"hidraw*\", SUBSYSTEM==\"hidraw\", ATTRS{serial}==\"*vial:f64c2b3c*\", ATTRS{idVendor}==\"16c0\", ATTRS{idProduct}==\"27db\", MODE=\"0660\", GROUP=\"wheel\", TAG+=\"uaccess\", TAG+=\"udev-acl\"" | sudo tee -a /etc/udev/rules.d/99-unicomp-mini-m.rules

sudo dnf -y install stow
rm -f $HOME/.bashrc $HOME/.bash_profile
stow .
source $HOME/.bashrc || true


## rpm fusion
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf -y swap ffmpeg-free ffmpeg --allowerasing
sudo dnf -y install @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf -y install intel-media-driver 

# packages
sudo dnf -y install ${PKGS}
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

## browser

## librewolf
curl -fsSL https://repo.librewolf.net/librewolf.repo | sudo tee /etc/yum.repos.d/librewolf.repo
sudo dnf -y install librewolf
## mullvad
sudo dnf -y config-manager addrepo --from-repofile=https://repository.mullvad.net/rpm/stable/mullvad.repo
sudo dnf -y install mullvad-browser


sudo dnf -y install @virtualization
sudo usermod -a -G libvirt $(whoami)

sudo dnf -y config-manager addrepo --from-repofile="https://download.docker.com/linux/fedora/docker-ce.repo"

sudo dnf -y install docker-ce docker-ce-cli containerd.io
sudo usermod -a -G docker $(whoami)


#sudo dnf -y remove yt-dlp
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o ~/.local/bin/yt-dlp
chmod a+rx ~/.local/bin/yt-dlp  # Make executable

go install go.senan.xyz/cliphist@latest
env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest

## services
xdg-user-dirs-update

systemctl --user enable kanshi.service
sudo systemctl enable tlp.service
sudo systemctl enable tlp-pd.service
echo "START_CHARGE_THRESH_BAT0=40" | sudo tee -a /etc/tlp.conf
echo "STOP_CHARGE_THRESH_BAT0=60" | sudo tee -a /etc/tlp.conf
sudo systemctl enable docker

sudo systemctl set-default graphical.target
sudo systemctl enable sddm
sudo grubby --update-kernel=ALL --args="rhgb quiet"
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo plymouth-set-default-theme spinfinity
sudo dracut --force 
tar xf ~/.dotfiles/wallpapers.tar.xz -C ~/pictures/
tar xf ~/.dotfiles/lock_image.tar.xz -C ~/pictures/
sudo mkdir -p /usr/share/backgrounds/custom/
sudo tar xf ~/.dotfiles/sddm_background.tar.xz -C /usr/share/backgrounds/custom/
echo "[General]" | sudo tee /usr/share/sddm/themes/03-sway-fedora/theme.conf
echo "background=/usr/share/backgrounds/custom/04fe6233228eb9e67a38a67bfb4a5d2d.jxl" | sudo tee -a  /usr/share/sddm/themes/03-sway-fedora/theme.conf
bash ~/.dotfiles/toolchains.sh
sleep 10s
systemctl reboot

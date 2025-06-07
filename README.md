# Post Install 
# Build Applications
- [nsxiv](https://codeberg.org/nsxiv/nsxiv)
- [gobble](https://github.com/EmperorPenguin18/gobble)
- [MakeMkv](https://www.makemkv.com/download/)
- [reliquary-archiver](https://github.com/IceDynamix/reliquary-archiver)
- thorium
- gtypist
# Flatpaks
```
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
# System Configurations
## /etc/sudoers
```
# specify the timeout type (usual default=tty)
Defaults:savantshuia timestamp_type=global

# specify the timeout interval (usual default=15)
Defaults:savantshuia timestamp_timeout=2
```
## /etc/modprobe.d/i915.conf
## /etc/dracut.conf.d/i915.conf
## /etc/X11/xorg.conf.d
### [90-touchpad.conf]()
### [20-intel.conf](https://wiki.archlinux.org/title/Intel_graphics#Xorg_configuration)
## [Rust Toolchain](https://www.rust-lang.org/tools/install)
- Follow official instructions on the Rust website
# dotfiles
```bash
ssh-keygen -t ed25519 -C "34275616+ishaanvatus@users.noreply.github.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```


# Post Install 
# Build Applications
- [nsxiv](https://codeberg.org/nsxiv/nsxiv)
- [devour](https://github.com/salman-abedin/devour)
- [gobble](https://github.com/EmperorPenguin18/gobble)
- [MakeMkv](https://www.makemkv.com/download/)
# Flatpaks
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

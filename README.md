# Post Install 
## Build Applications
- [nsxiv](https://codeberg.org/nsxiv/nsxiv)
- [MakeMkv](https://www.makemkv.com/download/)
- [Thorium](https://thorium.rocks/)

## /etc/sudoers
```
# specify the timeout type (usual default=tty)
Defaults:savantshuia timestamp_type=global

# specify the timeout interval (usual default=15)
Defaults:savantshuia timestamp_timeout=5
```
## /etc/vconsole.conf 
- cd into /usr/lib/kbd/keymaps/xkb/
- cp us.map.gz us-remapped.map.gz
- gunzip us-remapped.map.gz
- edit to replace caps with escape
- gzip back
```
KEYMAP="us-remapped"
FONT="latarcyrheb-sun32"
```
## [Rust Toolchain](https://www.rust-lang.org/tools/install)
- Follow official instructions on the Rust website

## GitHub ssh-keys
```bash
ssh-keygen -t ed25519 -C "34275616+ishaanvatus@users.noreply.github.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```


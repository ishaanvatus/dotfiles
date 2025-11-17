# List of Applications I use:
- [strawberry](https://www.strawberrymusicplayer.org/) (music player)
- [mpv](https://mpv.io/) and [vlc](https://www.videolan.org/vlc/) (video players)
- [nsxiv](https://codeberg.org/nsxiv/nsxiv) (image viewer)
- [foot](https://codeberg.org/dnkl/foot) (terminal emulator)
- [neovim](https://neovim.io/) (text editor)
- [sway](https://swaywm.org/) (tiling wayland compositor)
- [thunar](https://docs.xfce.org/xfce/thunar/start) and [ranger](https://ranger.fm/) (file managers, gui and tui respectively)
- [librewolf](https://librewolf.net/) (main browser)
- [thorium](https://thorium.rocks/) (for things that require chromium like web bluetooth and web usb)
- [anki](https://apps.ankiweb.net/) (flashcards)
- [LaTeX](https://www.tug.org/texlive/quickinstall.html) ([physics and math people feel free to blame/revere him](https://lamport.azurewebsites.net/))
- [GIMP](https://www.gimp.org/), [Krita](https://krita.org/en/) and [ImageMagick](https://imagemagick.org/) (raster manipulation wizardy)
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


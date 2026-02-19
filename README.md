# List of Applications I use:
- [strawberry](https://www.strawberrymusicplayer.org/) (music player)
- [mpv](https://mpv.io/) and [vlc](https://www.videolan.org/vlc/) (video players)
- [nsxiv](https://codeberg.org/nsxiv/nsxiv) (image viewer)
- [foot](https://codeberg.org/dnkl/foot) (terminal emulator)
- [neovim](https://neovim.io/) (text editor)
- [sway](https://swaywm.org/) (tiling wayland compositor)
- [thunar](https://docs.xfce.org/xfce/thunar/start) and [ranger](https://ranger.fm/) (file managers, gui and tui respectively)
- [librewolf](https://librewolf.net/) (main browser)
- [chromium](https://github.com/chromium/chromium) (for things that require chromium like web bluetooth and web usb)
- [anki](https://apps.ankiweb.net/) (flashcards)
- [LaTeX](https://www.latex-project.org/) ([physics and math people feel free to blame/revere him](https://lamport.azurewebsites.net/))
- [GIMP](https://www.gimp.org/), [Krita](https://krita.org/en/) and [ImageMagick](https://imagemagick.org/) (raster manipulation wizardy)
# Post Install 
## Build Applications
- [MakeMkv](https://www.makemkv.com/download/)
- [anki](https://apps.ankiweb.net/)
- [LaTeX](https://www.tug.org/texlive/quickinstall.html)
- []()

## /etc/sudoers
```
# specify the timeout type (usual default=tty)
Defaults:savantshuia timestamp_type=global

# specify the timeout interval (usual default=15)
Defaults:savantshuia timestamp_timeout=5
```
## /etc/vconsole.conf 
```
cd /usr/lib/kbd/keymaps/xkb/
cp us.map.gz us-remap.map.gz
gunzip us-remap.map.gz
#edit to replace caps with escape
gzip us-remap.gz

## in /etc/vconsole.conf
KEYMAP="us-remap"
FONT="ter-132b"
```
## /etc/systemd/logind.conf.d/99-laptop-server.conf
```
[Login]
HandleLidSwitch=ignore
HandleLidSwitchExternalPower=ignore
HandleLidSwitchDocked=ignore
```
## [Rust Toolchain](https://www.rust-lang.org/tools/install)
- Follow official instructions on the Rust website

## GitHub ssh-keys
```bash
ssh-keygen -t ed25519 -C "34275616+ishaanvatus@users.noreply.github.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
## stow aftermath
```
systemctl --user enable kanshi.service
systemctl --user start sway-session.target
```

## [searxng docker install](https://docs.searxng.org/admin/installation-docker.html)
```
mkdir -p ~/.searxng/config/ ~/.searxng/data/
docker run --name searxng -d \
    -p 8888:8080 --restart always \
    -v "./config/:/etc/searxng/" \
    -v "./data/:/var/cache/searxng/" \
    docker.io/searxng/searxng:latest
```

## Flatpaks
- [Signal](https://flathub.org/en/apps/org.signal.Signal)
- [OBS Studio](https://flathub.org/en/apps/com.obsproject.Studio)
- [Kdenlive](https://flathub.org/en/apps/org.kde.kdenlive)

## Cloudflare Warp
```
sudo rpm --import https://pkg.cloudflareclient.com/pubkey.gpg
sudo tee /etc/yum.repos.d/cloudflare-warp.repo <<EOF
[cloudflare-warp]
name=Cloudflare WARP
baseurl=https://pkg.cloudflareclient.com/rpm
enabled=1
gpgcheck=1
gpgkey=https://pkg.cloudflareclient.com/pubkey.gpg
EOF
sudo dnf update
sudo dnf install cloudflare-warp
warp-cli registration new
warp-cli connect
curl https://www.cloudflare.com/cdn-cgi/trace
warp-cli mode warp+doh
```

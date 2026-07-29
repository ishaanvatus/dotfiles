# How to use this repo
- FIRSTLY: FREE FREE TO REPORT ANY ISSUES, I'LL GET AROUND TO IT IF I CAN REPLICATE IT.
- This scripts sets up a full [Sway](https://swaywm.org/) desktop experience configured to my personal usage, pls try it out.
- Get the [Fedora Linux](https://fedoraproject.org/) [Everything](https://fedoraproject.org/misc/#everything) ISO (netinstaller)
- Use the partition scheme given in [PARTITION_SCHEME.md](./PARTITION_SCHEME.md)
- Under "Software Selection"
    - Under "Base Environment" pick "Fedora Custom Operating System" 
    - Under "Add-Ons for Selected Environment" pick Standard, C Development Tools and Libraries & Development Tools
- [Disable root](https://wiki.archlinux.org/title/Sudo#Disable_root_login)
- Finish the rest of the steps in the installer and boot into your system, you will mostly likely need ethernet or usb-tethering
- The wifi drivers included are iwlwifi-mvm-firmware, graphics drivers for intel integrated, adapt the PKGS in bootstrap.sh
```
git clone https://github.com/ishaanvatus/dotfiles .dotfiles
cd .dotfiles
bash bootstrap.sh
## the script may ask for sudo a couple of times
```

- toolchains.sh will run towards the end and ask for prompts, this installs rustup, deno and nvm
    - rustup custom installation don't add to path, default profile, stable
    - deno don't add to path or add bash completions
    - if nvm appends some lines the last bit of .bashrc, remove them
### /etc/sudoers (replace "john" with your username)
one can do something like
```
sudo -E visudo -f /etc/sudoers.d/timeout
```
```
# specify the timeout type (usual default=tty)
Defaults:john timestamp_type=global

# specify the timeout interval (usual default=15)
Defaults:john timestamp_timeout=5
```
### [searxng docker install](https://docs.searxng.org/admin/installation-docker.html)
```
mkdir -p ~/.searxng/config/ ~/.searxng/data/ &&
cd ~/.searxng/ &&
docker run --name searxng -d \
    -p 8888:8080 --restart always \
    --dns 9.9.9.9 --dns 149.112.112.112 \
    -v "./config/:/etc/searxng/" \
    -v "./data/:/var/cache/searxng/" \
    docker.io/searxng/searxng:latest
```
- http://localhost:8888/search?q=%s
### Apps left to install
- [nsxiv](https://codeberg.org/nsxiv/nsxiv)
- [nwg-look](https://github.com/nwg-piotr/nwg-look)
    - Dark Theme
        - qt5ct dark theme & qt6ct dark theme: darker
        - nwg-look dark theme: Adwaita Dark, prefer dark
    - after setting themes in nwg-look (ensure you tick all the boxes to select the themes for flatpak too), reboot once.
    - run flatpaks.sh in the .dotfiles dir
    ```
    bash flatpaks.sh
    ```
- [chafa](https://github.com/hpjansson/chafa#installing) for jxl support lf previews
- [Anki](https://apps.ankiweb.net/#downloads), [instructions](https://docs.ankiweb.net/platform/linux/installing.html)
- [MakeMKV](https://forum.makemkv.com/forum/viewtopic.php?f=3&t=224), [Beta Key](https://forum.makemkv.com/forum/viewtopic.php?t=1053) 
- [Vial](https://get.vial.today/download/) make a Vial.desktop in ~/.local/share/applications
- ~[ddcui](https://github.com/rockowitz/ddcui) ddcutil frontend gui app.~, 
    - it's a pain since ddcutil versions may mismatch leading to dependency hell. No good alternative yet, apart from using ddcutil from the terminal.
### Optionally
- run lpf-spotify-client (already in [bootstrap script](./bootstrap.sh), from rpm fusion) for spotify (flatpak may not work well with sys tray)
### Librewolf
- Extensions
    - [Vimium](https://vimium.github.io/)
    - [Dark Reader](https://github.com/darkreader/darkreader) 
    - [TamperMonkey](https://www.tampermonkey.net/)
- tweak settings


### libvirt
- /etc/libvirt/network.conf: change 
    ```
    #firewall_backend = "nftables"
    firewall_backend = "iptables"
    ```

### "lay-tek", or "lay-tex", pray to Knuth
- [TeX Live](https://www.tug.org/texlive/quickinstall.html), this is last since it takes a long time, go drink tea or watch something
    ```
    curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
    zcat < install-tl-unx.tar.gz | tar xf -
    cd install-tl-2*
    sudo perl ./install-tl --no-interaction
    ```

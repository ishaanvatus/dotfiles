#!/bin/bash
set -eo pipefail

## nwg-look
cd "$HOME/.local/src"
git clone https://github.com/nwg-piotr/nwg-look.git
cd nwg-look
make build 
sudo make install

cd ../

## nsxiv
git clone https://codeberg.org/nsxiv/nsxiv.git
cd nsxiv
make
sed -i 's/{ "Nsxiv.window.background",   "white" }/{ "Nsxiv.window.background",   "#282828" }/' config.h
sed -i 's/{ "Nsxiv.window.foreground",   "black" }/{ "Nsxiv.window.foreground",   "#ebdbb2" }/' config.h
sed -i 's/{ "Nsxiv.bar.font",            "monospace-8" }/{ "Nsxiv.bar.font",            "Mononoki Nerd Font:style=regular:size=17" }/' config.h
sudo make install

cd ../

### chafa
git clone https://github.com/hpjansson/chafa.git
cd chafa
./autogen.sh
make
sudo make install
sudo ldconfig

## SearXNG
mkdir -p ~/.searxng/config/ ~/.searxng/data/ &&
cd ~/.searxng/ &&
docker run --name searxng -d \
    -p 8888:8080 --restart always \
    --dns 9.9.9.9 --dns 149.112.112.112 \
    -v "./config/:/etc/searxng/" \
    -v "./data/:/var/cache/searxng/" \
    docker.io/searxng/searxng:latest

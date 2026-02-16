#!/bin/bash

#yt-dlp -f "bestvideo[height<=1080]+bestaudio" -S "vcodec, acodec" --write-subs en --embed-chapters --output "%(playlist_index)03d_%(title)s_%(vcodec)s_[%(id)s].%(ext)s" "$1"
#yt-dlp -f "bestvideo[height<=1080]+bestaudio" -S "vcodec, acodec" --write-subs en --embed-chapters --output "%(playlist_index)02d_%(title)s_%(vcodec)s_[%(id)s].%(ext)s" "$1"
yt-dlp --cookies-from-browser chromium -f "bestvideo+bestaudio" -S "vcodec, acodec" --write-subs en --embed-chapters --no-check-certificate --output "%(title)s_%(vcodec)s_[%(id)s].%(ext)s" "$1"
#yt-dlp -f "bestvideo+bestaudio" -S "vcodec, acodec" --embed-chapters --output "%(title)s_%(vcodec)s_[%(id)s].%(ext)s" "$1"

# General Music related info

### All/Playlists

Playlists are sensitive to folder structure, only those that have been modified to work in this tree are usable (Loop.m3u).

The others expect the orignal (phone) folder structure, so will not work out of the box .

Music that does not respect the structure at all (in random places) is put in "others" jail.

# Needed info to transfer / download / convert music

### Using yt-dlp

#### Audio from single video

```bash
yt-dlp --extract-audio --audio-format mp3 <YT_URL>
yt-dlp --extract-audio -f m4a -c 1080 -o ~/Downloads/ <YT_URL>
```

#### Download playlist (also video)

```bash
yt-dlp -f best -i <YT_PLAYLIST_URL>
yt-dlp --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --output "%(title)s.%(ext)s" --yes-playlist '<YT_PLAYLIST_URL>
yt-dlp –playlist-items 10  <YT_PLAYLIST_URL>
yt-dlp –playlist-items 1 --format mp4 --output “Downloads/" <YT_PLAYLIST_URL>
yt-dlp --batch-file="/path/to/playlist.txt"
```
```bash
yt-dlp --ignore-errors --extract-audio --yes-playlist "<YT_PLAYLIST_URL>" #the one that actually worked
mv *.m4a /home/luca/Music/All/Canzoni10/
mv *.opus /home/luca/Music/All/Canzoni10/opus/
```

#### Format conversion
(each scripts talked about is also found here in scripts/)

a basic script for m4a to mp3 conversion is orignally in converted/

for opus to m4a conversion there is an example in Canzoni10,
running from there, with all .opus already in /opus, they will be changed in place to m4a

then from /opus
```
mv *.m4a /home/luca/Music/All/Canzoni10/
```

remove yt-dlp addition [xxxxxxx]
```
file-rename 's/\[[a-zA-Z0-9_]*\]//' *.m4a
```

for more info on rename:
(rename command)[https://www.geeksforgeeks.org/rename-command-in-linux-with-examples/]

how to set the regx:
(regex101)[https://regex101.com/]

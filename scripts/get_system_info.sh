# get current de config
gsettings list-recursively org.gnome.desktop.interface > config/gnome_desktop_interface.txt

# get useful dotfiles
cp ~/.bashrc config/.bashrc
cp ~/.bash_aliases config/.bash_aliases

# get terminal profile
UUID=$(gsettings get org.gnome.Terminal.ProfilesList default)
UUID=${UUID:1:-1}
# Replace <UUID> with your profile's UUID
dconf dump /org/gnome/terminal/legacy/profiles:/:${UUID}/ > config/terminal-settings.conf

# get wallpaper, managed by nemo, not gnome.desktop.background
WALLPAPER_PATH=$(gsettings get org.cinnamon.desktop.background picture-uri)
WALLPAPER_PATH=${WALLPAPER_PATH:8:-1}
WALLPAPER_NAME=$(basename $WALLPAPER_PATH)
echo $WALLPAPER_PATH > config/wallpaper.txt

if [ ! -d imgs ]; then
    mkdir imgs
fi
cp $WALLPAPER_PATH imgs/$WALLPAPER_NAME
# get current de config
gsettings list-recursively org.gnome.desktop.interface > config/gnome_desktop_interface.txt

# get useful dotfiles
cp ~/.bashrc config/.bashrc
cp ~/.bash_aliases config/.bash_aliases


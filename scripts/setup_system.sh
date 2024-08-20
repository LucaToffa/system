# untested distro setup script
# mostly apt installs
# remenber to sanity and error check every line
MAIN_PROGAMS="git gcc g++ cmake make chromium telegam-desktop visual-studio-code"
PYTHON_STUFF="python3 python3-pip python3-venv"
echo "starting setup"
echo "installing main programs..."
sudo apt-get update && upgrade
sudo apt-get install $(MAIN_PROGAMS)
sudo apt-get install $(PYTHON_STUFF)

echo "setup git..."
read -p "Enter your git username: " gitname
read -p "Enter your git email: " gitemail
git config --global user.name "$gitname"
git config --global user.email "$gitemail"

echo "setup ssh..."
ssh-keygen -t rsa -b 4096 -C "$gitemail"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo "copy the following key to your github account:"
cat ~/.ssh/id_rsa.pub

echo "installing nvidia drivers..."

echo "setup desktop environment..." # currently autogen example
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Adwaita'
gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'
gsettings set org.gnome.desktop.interface monospace-font-name 'Monospace 12'
gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/gnome/adwaita-day.jpg'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/gnome/adwaita-day.jpg'
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-show-week-numbers true

echo "change chromium settings..."
# add to /usr/share/applications/chromium-browser.desktop   
# --enable-features=TouchpadOverscrollHistoryNavigation
# at Exec=chromium %U

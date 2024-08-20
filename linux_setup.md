## install:

Install nvidia drivers (driver manager)

sudo apt-get update && upgrade

sudo apt-get install
    git nasm g++ cmake python3-pip steam npm chromium telegam-desktop kicad python3-venv lutris gimp

```
!errata corrige!
If you love yourself don't care about nala,
install steam from the website
never trust nvidia drivers besides those suggested by th OS
```
## Flatpak:

Vscode Vlc

### Matlab
after login (uni account) and executable downloads

unzip dw folder in new matlab directory (Matlab-linux)

    ./install in the directory  
    add neded packages  
    now you can launch ./matlab 
    license number: 872052
for app launcher support

    sudo apt install matlab-support
    follow gui instructions, change permissions if needed

### Node
update node and npm

    npm install -g n
    n lts
    n latest
    n prune
    npm update -n npm
 
in npm project dir
    ```npm i #install dependencies```

## log into:
    steam (Toffa46)
    VsCode(with github)
    Prismlauncher

### panel:

Files, system monitor, text editor, firefox, telegram, chrome, Document Viewer, Prism Launcher, vscode, terminal

### settings:
enable gestures, mouse speed, power managment, ecc

Browser: u block origin extension

Managing firewall

## Media:
Make a playlist out of a dir

ls *.m4a > playlistname.m3u

### Lutris:
install wine version from manage versions
set the wine prefix from .wine (es drive-c)


### chromium setup:
scroll left-right navigation: add to /usr/share/applications/chromium-browser.desktop   
--enable-features=TouchpadOverscrollHistoryNavigation
at Exec=chromium %U

## Power managment:
sudo apt install powertop powerstat 

(possible alternative to powertop: tlp + tlp-rdw)

# DWM Configuration

DWM (Dynamic Window Manager) is a Tilling Window Manager for X, developed by suckless org. The configuration require C Programming skill and then build it from scratch

## Screenshot

<p align="center">
    <img width="75%" src="https://i.imgur.com/zoZ6L1y.png" alt="home-dwm">
     <p align="center">Home, <a href="https://i.imgur.com/cHOmkzs.jpg" target="_blank">Background</a></p>
</p>
<p align="center">
    <img width="75%" src="https://i.imgur.com/kL0PwXc.png" alt="window-dwm">
    <p align="center">Window Preview</p>
</p>

## Installed application

before install my configuration, you must install some package

- `flameshot` : screenshot tool
- `FontAwesome` : icon for dwm bar
- `dmenu` : Application menu
- `st` : Simple Terminal
- `xbacklight`
- `amixer`

## Application tags

When you open some application, this config will auto spawn in spesific tag

- `tag 1` : st, GIMP
- `tag 2` : vscode
- `tag 3` : -
- `tag 4` : -
- `tag 5` : Spotify
- `tag 6` : Inkscape
- `tag 7` : -
- `tag 8` : Telegram
- `tag 9` : Firefox, Chromium

## Detail Configuration

- `config.h` : main config, copy to your dwm clone repo
- `shellScript/` : script for lock screen, low bat

#!/bin/sh

# Font configuration
xfconf-query -c xsettings -p /Xft/Antialias -t int -s 1
xfconf-query -c xsettings -p /Xft/Hinting -t int -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -t string -s "hintslight"
xfconf-query -c xsettings -p /Xft/RGBA -t string -s "rgb"

# Theme configuration
xfconf-query -c xsettings -p /Net/ThemeName -t string -s "Adwaita"
xfconf-query -c xsettings -p /Net/IconThemeName -t string -s "Adwaita"

# Power management
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -t int -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled -t bool -s false
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/show-tray-icon -t bool -s false

# Keyboard shortcuts
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>b" --create -t string -s "/home/x/bin/booky/booky -o"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>p" --create -t string -s "/home/x/bin/passmenu"

# Desktop settings
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-filesystem -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-home -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-removable -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-trash -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/show-tooltips -t bool -s false
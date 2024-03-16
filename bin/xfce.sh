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
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -t int -s 0 --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled -t bool -s false --create
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/show-tray-icon -t bool -s true --create

# Keyboard shortcuts
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>Return" -t string -s "xfce4-terminal" --create

# Desktop settings
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-filesystem -t bool -s false --create
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-home -t bool -s false --create
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-removable -t bool -s false --create
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-trash -t bool -s false --create
xfconf-query -c xfce4-desktop -p /desktop-icons/show-tooltips -t bool -s false --create

# Panel (Main)
xfconf-query -c xfce4-panel -p /panels/dark-mode -t bool -s false

# Panel (Dock)
xfconf-query -c xfce4-panel -p /panels/panel-2/position -s "p=7;x=0;y=0"
xfconf-query -c xfce4-panel -p /panels/panel-2/mode -t int -s 1 --create
xfconf-query -c xfce4-panel -p /panels/panel-2/size -t int -s 48
xfconf-query -c xfce4-panel -p /panels/panel-2/autohide-behavior -t int -s 0

# Thunar
xfconf-query -c thunar -p /misc-thumbnail-mode -t string -s "THUNAR_THUMBNAIL_MODE_ALWAYS" --create

# xfwm
xfconf-query -c xfwm4 -p /general/title_alignment -t string -s "left"
xfconf-query -c xfwm4 -p /general/placement_ratio -t int -s 100
xfconf-query -c xfwm4 -p /general/scroll_workspaces -t bool -s false
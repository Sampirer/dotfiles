#!/bin/bash
# Qtile Autostart Script - Tokyo Night Storm Theme
# Carsten's Arch Linux Setup

# Picom Compositor (Transparenz, Blur, Schatten)
picom --config ~/.config/picom/picom.conf &

# Dunst Notification Daemon
dunst &

# Network Manager Applet
nm-applet &

# Wallpaper setzen (fallback auf einfarbig wenn feh/nitrogen nicht verfügbar)
if command -v feh >/dev/null 2>&1; then
    feh --bg-scale ~/Pictures/wallpapers/tokyo-night-storm/wallhaven_x82pmz_2560x1440.png 2>/dev/null || xsetroot -solid "#24283b"
elif command -v nitrogen >/dev/null 2>&1; then
    nitrogen --restore 2>/dev/null || xsetroot -solid "#24283b"
else
    xsetroot -solid "#24283b"
fi

# Bildschirmschoner deaktivieren
xset s off -dpms

# Flameshot im Hintergrund starten
flameshot &

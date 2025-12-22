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
WALLPAPER_PATH="$HOME/Pictures/wallpapers/tokyo-night-storm/wallhaven_x82pmz_2560x1440.png"

if command -v feh >/dev/null 2>&1; then
    if [ -f "$WALLPAPER_PATH" ]; then
        echo "Setting wallpaper with feh: $WALLPAPER_PATH"
        feh --bg-scale "$WALLPAPER_PATH" || {
            echo "feh failed, falling back to solid color"
            xsetroot -solid "#24283b"
        }
    else
        echo "Wallpaper file not found: $WALLPAPER_PATH"
        echo "Falling back to solid color"
        xsetroot -solid "#24283b"
    fi
elif command -v nitrogen >/dev/null 2>&1; then
    echo "Using nitrogen to restore wallpaper"
    nitrogen --restore || {
        echo "nitrogen failed, falling back to solid color"
        xsetroot -solid "#24283b"
    }
else
    echo "No wallpaper tool found (feh/nitrogen), using solid color"
    xsetroot -solid "#24283b"
fi

# Bildschirmschoner deaktivieren
xset s off -dpms

# Flameshot im Hintergrund starten
flameshot &

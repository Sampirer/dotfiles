#!/bin/bash
# Qtile Autostart Script - Tokyo Night Storm Theme
# Carsten's Arch Linux Setup

# Picom Compositor (Transparenz, Blur, Schatten)
picom --config ~/.config/picom/picom.conf &

# Dunst Notification Daemon
dunst &

# Network Manager Applet
nm-applet &

# Wallpaper (mit feh) - Optional, wenn du ein Wallpaper hast
feh --bg-scale --randomize ~/Pictures/wallpapers/tokyo-night-storm/*

# Setze Cursor Theme (optional)
# xsetroot -cursor_name left_ptr &

# Disable screen blanking (optional)
# xset s off -dpms &

# Flameshot im Hintergrund starten
flameshot &

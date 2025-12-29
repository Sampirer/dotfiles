#!/bin/sh

userresources="$HOME/.Xresources"
usermodmap="$HOME/.Xmodmap"
sysresources="/etc/X11/xinit/.Xresources"
sysmodmap="/etc/X11/xinit/.Xmodmap"

# merge in defaults and keymaps

if [ -f "$sysresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        xrdb -merge "$sysresources"
    else
        xrdb -nocpp -merge "$sysresources"
    fi
fi

if [ -f "$sysmodmap" ]; then
    xmodmap "$sysmodmap"
fi

if [ -f "$userresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        xrdb -merge "$userresources"
    else
        xrdb -nocpp -merge "$userresources"
    fi
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# Compositor
picom -b &

# Benachrichtigungen
dunst &

# Netzwerk-Applet
nm-applet &

# Wallpaper
~/.fehbg 2>/dev/null || xsetroot -solid "#24283b"

# Bluetooth-Applet
blueman-applet &

# USB Auto-Mount
udiskie --tray &

# Qtile starten
exec qtile start

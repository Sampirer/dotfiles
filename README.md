# Carsten's Dotfiles - Tokyo Night Storm

Arch Linux + Qtile Setup mit durchgängigem Tokyo Night Storm Theme.

## 🎨 Theme

**Tokyo Night Storm**
- Background: `#24283b`
- Foreground: `#c0caf5`  
- Accent: `#7dcfff` (Cyan)

## 📦 Components

- **Qtile** - Window Manager
- **Alacritty** - Terminal  
- **Picom** - Compositor (xrender for Intel iGPU)
- **Dunst** - Notifications
- **Rofi** - App Launcher

## 🚀 Installation
```bash
git clone https://github.com/Sampirer/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow bash qtile alacritty picom dunst rofi x11
```

## ⌨️ Keybindings

- `Mod4 + Enter` - Terminal
- `Mod4 + d` - Rofi App Launcher
- `Mod4 + hjkl` - Navigate Windows
- `Mod4 + Ctrl + r` - Reload Qtile

---
**Hardware**: Dell Latitude 7340 (Intel i7 + iGPU)

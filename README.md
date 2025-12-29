# 🌙 Dotfiles

<div align="center">

![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Qtile](https://img.shields.io/badge/Qtile-666666?style=for-the-badge&logo=python&logoColor=white)
![Tokyo Night](https://img.shields.io/badge/Tokyo_Night-24283b?style=for-the-badge)

**[🇬🇧 English](#-english) | [🇩🇪 Deutsch](#-deutsch)**

<img src="screenshots/desktop_20251222_171127.png" alt="Desktop Screenshot" width="800"/>

</div>

---

## 🇬🇧 English

Personal configuration files for my Arch Linux setup with Qtile, managed with GNU Stow.

### ✨ Features

- **Window Manager:** Qtile (tiling, Python-based)
- **Theme:** Tokyo Night Storm (consistent across all apps)
- **Terminal:** Alacritty with transparency
- **Shell:** Bash + Starship prompt + blesh
- **Launcher:** Rofi
- **Notifications:** Dunst
- **Compositor:** Picom (blur, shadows, transparency)

### 📦 Included Configs

| Package | Description |
|---------|-------------|
| `bash` | Shell configuration, aliases, environment |
| `qtile` | Window manager config + autostart |
| `alacritty` | Terminal emulator |
| `picom` | Compositor (effects) |
| `dunst` | Notification daemon |
| `rofi` | Application launcher |
| `starship` | Cross-shell prompt |
| `blesh` | Bash Line Editor |
| `git` | Git configuration |
| `x11` | Xinitrc and X settings |

### 🚀 Quick Start

```bash
# Clone repository
git clone https://github.com/Sampirer/dotfiles ~/repos/dotfiles
cd ~/repos/dotfiles

# Install all configs
stow -t ~ bash qtile alacritty picom dunst rofi starship blesh git x11

# Or install individually
stow -t ~ <package-name>
```

### 📚 Documentation

New to tiling window managers? Check out the [Documentation](docs/README.md) (available in English and German).

### 🔗 Related

- [arch-install](https://github.com/Sampirer/arch-install) – Automated installation script
- [scripts](https://github.com/Sampirer/scripts) – Utility scripts

---

## 🇩🇪 Deutsch

Persönliche Konfigurationsdateien für mein Arch Linux Setup mit Qtile, verwaltet mit GNU Stow.

### ✨ Features

- **Window Manager:** Qtile (Tiling, Python-basiert)
- **Theme:** Tokyo Night Storm (einheitlich in allen Apps)
- **Terminal:** Alacritty mit Transparenz
- **Shell:** Bash + Starship Prompt + blesh
- **Launcher:** Rofi
- **Benachrichtigungen:** Dunst
- **Compositor:** Picom (Blur, Schatten, Transparenz)

### 📦 Enthaltene Configs

| Paket | Beschreibung |
|-------|--------------|
| `bash` | Shell-Konfiguration, Aliases, Umgebung |
| `qtile` | Window Manager Config + Autostart |
| `alacritty` | Terminal Emulator |
| `picom` | Compositor (Effekte) |
| `dunst` | Benachrichtigungs-Daemon |
| `rofi` | Anwendungs-Launcher |
| `starship` | Cross-Shell Prompt |
| `blesh` | Bash Line Editor |
| `git` | Git-Konfiguration |
| `x11` | Xinitrc und X-Einstellungen |

### 🚀 Schnellstart

```bash
# Repository klonen
git clone https://github.com/Sampirer/dotfiles ~/repos/dotfiles
cd ~/repos/dotfiles

# Alle Configs installieren
stow -t ~ bash qtile alacritty picom dunst rofi starship blesh git x11

# Oder einzeln installieren
stow -t ~ <paket-name>
```

### 📚 Dokumentation

Neu bei Tiling Window Managern? Schau dir die [Dokumentation](docs/README.md) an (auf Deutsch und Englisch verfügbar).

### 🔗 Verwandt

- [arch-install](https://github.com/Sampirer/arch-install) – Automatisiertes Installations-Script
- [scripts](https://github.com/Sampirer/scripts) – Utility Scripts

---

<div align="center">

### 🎨 Color Palette / Farbpalette

| Color | Hex | Preview |
|-------|-----|---------|
| Background | `#24283b` | ![#24283b](https://via.placeholder.com/20/24283b/24283b) |
| Foreground | `#c0caf5` | ![#c0caf5](https://via.placeholder.com/20/c0caf5/c0caf5) |
| Blue | `#7aa2f7` | ![#7aa2f7](https://via.placeholder.com/20/7aa2f7/7aa2f7) |
| Cyan | `#7dcfff` | ![#7dcfff](https://via.placeholder.com/20/7dcfff/7dcfff) |
| Green | `#9ece6a` | ![#9ece6a](https://via.placeholder.com/20/9ece6a/9ece6a) |
| Red | `#f7768e` | ![#f7768e](https://via.placeholder.com/20/f7768e/f7768e) |
| Purple | `#bb9af7` | ![#bb9af7](https://via.placeholder.com/20/bb9af7/bb9af7) |
| Yellow | `#e0af68` | ![#e0af68](https://via.placeholder.com/20/e0af68/e0af68) |

</div>

---

<div align="center">

**Made with ❤️ on Arch Linux**

</div>

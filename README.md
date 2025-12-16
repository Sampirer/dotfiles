# Dotfiles für Arch + Qtile Setup

Minimales Arch Linux Setup mit Qtile (Tiling WM), Btrfs + Snapper Snapshots.

## Inhalt

| Ordner | Ziel | Beschreibung |
|--------|------|--------------|
| `bash/` | `~/` | Bash-Konfiguration |
| `qtile/` | `~/.config/qtile/` | Qtile Window Manager |
| `x11/` | `~/` | X11 Startskript |
| `alacritty/` | `~/.config/alacritty/` | Terminal-Emulator |

## Voraussetzungen

- Arch Linux (oder Arch-basierte Distribution)
- Git und GNU Stow installiert

```bash
sudo pacman -S git stow
```

## Installation

### 1. Repository klonen

```bash
git clone git@github.com:Sampirer/dotfiles.git ~/dotfiles
```

Oder via HTTPS:

```bash
git clone https://github.com/Sampirer/dotfiles.git ~/dotfiles
```

### 2. Bestehende Configs sichern (falls vorhanden)

```bash
# Backup erstellen
mkdir -p ~/dotfiles-backup
mv ~/.bashrc ~/dotfiles-backup/ 2>/dev/null
mv ~/.bash_profile ~/dotfiles-backup/ 2>/dev/null
mv ~/.xinitrc ~/dotfiles-backup/ 2>/dev/null
mv ~/.config/qtile ~/dotfiles-backup/ 2>/dev/null
mv ~/.config/alacritty ~/dotfiles-backup/ 2>/dev/null
```

### 3. Dotfiles verlinken

```bash
cd ~/dotfiles

# Alle Configs verlinken
stow bash
stow qtile
stow x11
stow alacritty
```

### 4. Verifizieren

```bash
# Symlinks prüfen
ls -la ~/.bashrc
ls -la ~/.config/qtile/config.py
```

## Benötigte Pakete

Diese Pakete müssen installiert sein, damit die Configs funktionieren:

```bash
sudo pacman -S \
    qtile python-psutil python-iwlib \
    alacritty \
    picom dunst \
    xorg-server xorg-xinit xorg-xrandr
```

## Deinstallation

```bash
cd ~/dotfiles

# Symlinks entfernen
stow -D bash
stow -D qtile
stow -D x11
stow -D alacritty

# Optional: Backup wiederherstellen
mv ~/dotfiles-backup/.bashrc ~/
# ...
```

## Neues Programm hinzufügen

```bash
cd ~/dotfiles

# Beispiel: Picom hinzufügen
mkdir -p picom/.config/picom
mv ~/.config/picom/picom.conf picom/.config/picom/

# Verlinken
stow picom

# Committen
git add .
git commit -m "Add picom config"
git push
```

## System-Configs (außerhalb von $HOME)

Folgende Configs liegen außerhalb von `$HOME` und müssen manuell kopiert werden:

### Keyboard Layout (X11)

```bash
sudo mkdir -p /etc/X11/xorg.conf.d
sudo tee /etc/X11/xorg.conf.d/00-keyboard.conf << 'EOF'
Section "InputClass"
    Identifier "keyboard"
    MatchIsKeyboard "yes"
    Option "XkbLayout" "de"
EndSection
EOF
```

## Hardware

Getestet auf:

- **Dell Latitude 7340** (Intel i7, Intel Graphics)

## Lizenz

MIT

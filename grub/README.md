# GRUB Tokyo Night Theme

GRUB Bootloader Konfiguration mit Tokyo Night Storm Theme.

## Installation

1. Theme installieren:
```bash
sudo cp -r boot/grub/themes/tokyo-night /boot/grub/themes/
```

2. GRUB Konfiguration kopieren:
```bash
sudo cp etc/default/grub /etc/default/grub
```

3. GRUB neu generieren:
```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

## Theme Features

- Tokyo Night Storm Farbschema
- Moderne, minimalistische Oberfläche
- Konsistente Farben mit dem Rest des Systems

## Dateien

- `etc/default/grub` - Haupt-GRUB Konfiguration
- `boot/grub/themes/tokyo-night/theme.txt` - Theme Definition
- `boot/grub/themes/tokyo-night/background.jpg` - Hintergrundbild (nicht enthalten)

## Anpassungen

Das Theme kann durch Bearbeitung der `theme.txt` angepasst werden.
Farben folgen dem Tokyo Night Storm Schema.

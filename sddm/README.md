# SDDM Tokyo Night Theme

SDDM Display Manager Konfiguration mit Tokyo Night Storm Theme.

## Installation

1. Theme installieren:
```bash
sudo cp -r usr/share/sddm/themes/tokyo-night /usr/share/sddm/themes/
```

2. SDDM Konfiguration kopieren:
```bash
sudo cp etc/sddm.conf /etc/sddm.conf
```

3. SDDM neu starten:
```bash
sudo systemctl restart sddm
```

## Theme Features

- Tokyo Night Storm Farbschema
- Moderne, glasmorphe Oberfläche
- Abgerundete Ecken und Transparenz
- Konsistente Farben mit Qtile Setup

## Dateien

- `etc/sddm.conf` - Haupt-SDDM Konfiguration
- `usr/share/sddm/themes/tokyo-night/Main.qml` - Theme UI
- `usr/share/sddm/themes/tokyo-night/theme.conf` - Theme Konfiguration

## Anpassungen

Das Theme kann durch Bearbeitung der QML-Dateien angepasst werden.
Farben sind im Tokyo Night Storm Schema definiert.

## Abhängigkeiten

- Qt5/Qt6 QML Module
- SDDM

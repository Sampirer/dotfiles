# Dotfiles

Meine persönlichen Konfigurationsdateien für Arch Linux mit Qtile, verwaltet mit GNU Stow.

## Screenshot

![Desktop](screenshots/desktop_20251222_171127.png)

## Installation

```bash
# Repository klonen
git clone https://github.com/Sampirer/dotfiles ~/repos/dotfiles
cd ~/repos/dotfiles

# Alle Konfigurationen installieren
stow -t ~ */

# Oder einzelne Pakete installieren
stow -t ~ <package-name>
```

## Pakete

### Shell

#### bash

Dateien:
- `.bash_profile`
- `.bashrc`

### Terminal

#### alacritty

Dateien:
- `.config/alacritty/alacritty.toml`

### Window Manager

#### qtile

Dateien:
- `.config/qtile/autostart.sh`
- `.config/qtile/config.py`

### Desktop

#### dunst

Dateien:
- `.config/dunst/dunstrc`

#### picom

Dateien:
- `.config/picom/picom.conf`

#### rofi

Dateien:
- `.config/rofi/config.rasi`

### Tools

#### blesh

Dateien:
- `.config/blesh/init.sh`

#### git

Dateien:
- `.gitconfig`

#### starship

Dateien:
- `.config/starship.toml`

### Weitere

#### aider

Dateien:
- `.config/aider/config.yml`
- `.config/aider/.env.template`

#### flameshot

Dateien:
- `.config/flameshot/flameshot.ini`

#### grub

Dateien:
- `boot/grub/themes/tokyo-night/theme.txt`
- `etc/default/grub`
- `README.md`

#### htop

Dateien:
- `.config/htop/htoprc`

#### sddm

Dateien:
- `etc/sddm.conf`
- `README.md`
- `usr/share/sddm/themes/tokyo-night/Main.qml`
- `usr/share/sddm/themes/tokyo-night/theme.conf`

#### wallpapers

Dateien:
- `Pictures/wallpapers/tokyo-lofi/openart-image_zwNulTB3_1765982045285_raw.png`
- `Pictures/wallpapers/tokyo-lofi/wp10095732.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244891.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244892.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244894.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244895.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244899.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244903.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244919.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244921.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244929.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244930.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244933.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244937.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244940.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244941.png`
- `Pictures/wallpapers/tokyo-lofi/wp10244987.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244989.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10244991.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10245004.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10245005.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10245008.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp10245009.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp4649501.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp4822515.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp4832507.png`
- `Pictures/wallpapers/tokyo-lofi/wp4918883.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp5986942.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp5986989.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp6200313.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp7860374.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp7860469.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp8548677.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp8841288.png`
- `Pictures/wallpapers/tokyo-lofi/wp8907481.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp9368827.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp9386660.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp9628059.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp9628086.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp9793460.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp9833407.jpg`
- `Pictures/wallpapers/tokyo-lofi/wp9911447.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_28kdom_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_2e2xyx_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_39mmpy_2560x1440.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_3zev16_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_571998_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_5d1m61_2560x1440.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_6k2ogx_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_6o25y7_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_7jgyre_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_83pmmy_2560x1440.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_dgkmpo_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_dgryeg_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_e778vr_3200x1800.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_ex136k_4096x2304.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_exl88k_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_g7jg63_2560x1440.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_j353oy_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_jxjm1m_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_k7d8j7_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_l8x1pr_2880x1620.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_lq7vor_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_md3vjm_2560x1440.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_mlldj8_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_o36mq7_4800x2700.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_o3km89_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_ox2wkp_2560x1440.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_ox5vo7_2560x1440.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_pkr6mp_4800x2700.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_poo2mp_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_q2pgyr_4096x2304.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_q2w5or_2560x1440.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_r2y5dj_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_rrjvyq_3840x2160.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_vgexwm_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_vqv3p8_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_w815gx_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_wq37kp_2560x1440.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_wy1lyr_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_wy6vqx_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_x82pmz_2560x1440.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_x8o7md_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_xee1ko_3840x2160.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_y8wm8g_4096x2304.png`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_yqjkyx_7680x4320.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_yx7g8k_2560x1440.jpg`
- `Pictures/wallpapers/tokyo-night-storm/wallhaven_zyvrxy_3840x2160.png`

#### x11

Dateien:
- `.xinitrc`

#### yay

Dateien:

## Theme

Tokyo Night Storm

## Verwandte Repositories

- [arch-install](https://github.com/Sampirer/arch-install) - Installations-Script
- [scripts](https://github.com/Sampirer/scripts) - Utility Scripts

---
*Generiert am: 29.12.2025 13:22:31*

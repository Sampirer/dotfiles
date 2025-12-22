# Qtile Config - Tokyo Night Storm Theme
# Carsten's Arch Linux Setup

from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
import os
import subprocess

# ============================================
# TOKYO NIGHT STORM COLOR PALETTE
# ============================================
colors = {
    "bg":           "#24283b",  # Background (dunkelblau-grau)
    "fg":           "#c0caf5",  # Foreground (helles blau-weiß)
    "bg_dark":      "#1f2335",  # Dunklerer Background
    "bg_highlight": "#292e42",  # Highlighted Background
    "terminal_black": "#414868",
    "red":          "#f7768e",  # Error/Critical
    "orange":       "#ff9e64",  # Warning
    "yellow":       "#e0af68",  # Info
    "green":        "#9ece6a",  # Success
    "cyan":         "#7dcfff",  # Accent 1
    "blue":         "#7aa2f7",  # Accent 2
    "magenta":      "#bb9af7",  # Accent 3
    "comment":      "#565f89",  # Disabled/Comments
}

# ============================================
# KEYBINDINGS
# ============================================
mod = "mod4"  # Windows/Super Key
terminal = "alacritty"

keys = [
    # Window Navigation (Vim-style)
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to next window"),

    # Window Movement
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Window Resizing
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Layout Controls
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen"),
    Key([mod], "t", lazy.window.toggle_floating(), desc="Toggle floating"),

    # Qtile Controls
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),

    # Applications
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "r", lazy.spawn("rofi -show drun"), desc="Launch Rofi"),
    # Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    Key([mod], "b", lazy.spawn("brave"), desc="Launch browser"),
    Key([mod], "e", lazy.spawn("thunar"), desc="Launch file manager"),
    Key([mod], "c", lazy.spawn("code"), desc="Launch VS Code"),

    # Screenshots (Flameshot)
    Key([], "Print", lazy.spawn("flameshot gui"), desc="Screenshot"),
    
    # Volume Control (ALSA)
    Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer -q sset Master 5%+")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("amixer -q sset Master 5%-")),
    Key([], "XF86AudioMute", lazy.spawn("amixer -q sset Master toggle")),

    # Brightness Control
    Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),
]

# ============================================
# WORKSPACES / GROUPS
# ============================================
groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend([
        Key([mod], i.name, lazy.group[i.name].toscreen(), desc=f"Switch to group {i.name}"),
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc=f"Switch to & move focused window to group {i.name}"),
    ])

# ============================================
# LAYOUTS
# ============================================
layout_theme = {
    "border_width": 2,
    "margin": 8,
    "border_focus": colors["cyan"],
    "border_normal": colors["bg_highlight"]
}

layouts = [
    layout.Columns(**layout_theme),
    layout.Max(**layout_theme),
    layout.MonadTall(**layout_theme),
    layout.MonadWide(**layout_theme),
]

# ============================================
# WIDGETS
# ============================================
widget_defaults = dict(
    font="DejaVu Sans Mono",
    fontsize=14,
    padding=3,
    background=colors["bg"],
    foreground=colors["fg"],
)
extension_defaults = widget_defaults.copy()

def init_widgets_list():
    widgets_list = [
        # Workspace Indicator
        widget.GroupBox(
            font="Font Awesome 6 Free Solid",
            fontsize=14,
            margin_y=3,
            margin_x=4,
            padding_y=6,
            padding_x=8,
            borderwidth=3,
            active=colors["cyan"],
            inactive=colors["comment"],
            rounded=False,
            highlight_color=colors["bg_highlight"],
            highlight_method="line",
            this_current_screen_border=colors["cyan"],
            this_screen_border=colors["blue"],
            other_current_screen_border=colors["magenta"],
            other_screen_border=colors["comment"],
            foreground=colors["fg"],
            background=colors["bg"],
        ),
        
        widget.Sep(
            linewidth=0,
            padding=10,
            foreground=colors["bg"],
            background=colors["bg"],
        ),

        # Current Window Title
        widget.WindowName(
            foreground=colors["blue"],
            background=colors["bg"],
            padding=5,
            font="DejaVu Sans Mono Bold",
        ),

        # Spacer (pushs everything to the right)
        widget.Spacer(
            length=bar.STRETCH,
            background=colors["bg"],
        ),

        # System Tray
        widget.Systray(
            background=colors["bg"],
            padding=5,
        ),

        widget.Sep(
            linewidth=0,
            padding=10,
            foreground=colors["bg"],
            background=colors["bg"],
        ),

        # CPU Usage
        widget.CPU(
            format=" {load_percent}%",
            foreground=colors["green"],
            background=colors["bg"],
            update_interval=2,
            mouse_callbacks={"Button1": lazy.spawn(terminal + " -e htop")},
        ),

        widget.Sep(
            linewidth=1,
            padding=10,
            foreground=colors["comment"],
            background=colors["bg"],
        ),

        # Memory Usage
        widget.Memory(
            format=" {MemUsed:.0f}M",
            foreground=colors["yellow"],
            background=colors["bg"],
            update_interval=2,
            mouse_callbacks={"Button1": lazy.spawn(terminal + " -e htop")},
        ),

        widget.Sep(
            linewidth=1,
            padding=10,
            foreground=colors["comment"],
            background=colors["bg"],
        ),

        # Network
        widget.Net(
            format="  {down} ↓↑ {up}",
            foreground=colors["cyan"],
            background=colors["bg"],
            update_interval=2,
        ),

        widget.Sep(
            linewidth=1,
            padding=10,
            foreground=colors["comment"],
            background=colors["bg"],
        ),

        # Volume
        widget.Volume(
            fmt=" {}",
            foreground=colors["magenta"],
            background=colors["bg"],
        ),

        widget.Sep(
            linewidth=1,
            padding=10,
            foreground=colors["comment"],
            background=colors["bg"],
        ),

        # Battery (nur für Laptop)
        widget.Battery(
            format=" {char} {percent:2.0%}",
            foreground=colors["orange"],
            background=colors["bg"],
            charge_char="⚡",
            discharge_char="🔋",
            full_char="✓",
            update_interval=30,
        ),

        widget.Sep(
            linewidth=1,
            padding=10,
            foreground=colors["comment"],
            background=colors["bg"],
        ),

        # Clock
        widget.Clock(
            format=" %a, %d.%m.%Y - %H:%M",
            foreground=colors["blue"],
            background=colors["bg"],
        ),

        widget.Sep(
            linewidth=0,
            padding=10,
            foreground=colors["bg"],
            background=colors["bg"],
        ),

        # Power Menu (Custom)
        widget.TextBox(
            text="⏻",
            foreground=colors["red"],
            background=colors["bg"],
            fontsize=16,
            mouse_callbacks={"Button1": lazy.spawn("rofi -show power-menu")},
        ),
    ]
    return widgets_list

# ============================================
# SCREENS
# ============================================
screens = [
    Screen(
        top=bar.Bar(
            init_widgets_list(),
            28,  # Bar height
            background=colors["bg"],
            opacity=0.95,  # Leichte Transparenz
        ),
    ),
]

# ============================================
# MOUSE BINDINGS
# ============================================
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

# ============================================
# FLOATING LAYOUT
# ============================================
floating_layout = layout.Floating(
    border_focus=colors["cyan"],
    border_normal=colors["bg_highlight"],
    border_width=2,
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),
        Match(wm_class="makebranch"),
        Match(wm_class="maketag"),
        Match(wm_class="ssh-askpass"),
        Match(title="branchdialog"),
        Match(title="pinentry"),
    ],
)

# ============================================
# GENERAL SETTINGS
# ============================================
dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wmname = "Qtile"

# ============================================
# AUTOSTART
# ============================================
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.Popen([home])

# My i3wm Dotfiles

A beautiful i3 window manager setup with Catppuccin Mocha color scheme, optimized for 4K displays.

## Features

- **i3wm** - Tiling window manager with vim-like keybindings
- **Polybar** - Beautiful status bar with interactive modules (WiFi, Bluetooth, Brightness)
- **Rofi** - Modern app launcher
- **Kitty** - Fast, GPU-accelerated terminal emulator
- **Picom** - Compositor for transparency, rounded corners, and blur effects
- **Dunst** - Notification daemon
- **Flameshot** - Powerful screenshot tool
- **PCManFM-Qt** - Fast Qt-based file manager
- **CopyQ** - Advanced clipboard manager
- **Pavucontrol** - Volume control GUI
- **Blueman** - Bluetooth manager
- **ARandR** - Display configuration tool
- **Catppuccin Mocha** - Consistent color scheme across all apps
- **4K Display Support** - 2560x1440 @ 125% scaling for HP Elite x360 1030 G2

## Required Packages

```bash
sudo apt install i3 rofi polybar picom dunst feh lxappearance \
                 kitty pcmanfm-qt pavucontrol flameshot copyq blueman \
                 xfce4-power-manager arandr brightnessctl nm-applet \
                 network-manager fonts-noto fonts-font-awesome -y
```

## Installation

### Quick Install
```bash
# Clone the repository
git clone https://github.com/devshad-01/dotfiles.git ~/.dotfiles

# Run the install script
cd ~/.dotfiles
chmod +x install.sh
./install.sh
```

### Manual Install
```bash
# Create config directories
mkdir -p ~/.config/{i3,polybar,rofi,picom,dunst}
mkdir -p ~/bin

# Link configurations
ln -sf ~/.dotfiles/i3/config ~/.config/i3/config
ln -sf ~/.dotfiles/polybar/config.ini ~/.config/polybar/config.ini
ln -sf ~/.dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi
ln -sf ~/.dotfiles/picom/picom.conf ~/.config/picom/picom.conf
ln -sf ~/.dotfiles/dunst/dunstrc ~/.config/dunst/dunstrc
ln -sf ~/.dotfiles/bin/launch-polybar.sh ~/.config/polybar/launch.sh

# Make scripts executable
chmod +x ~/.config/polybar/launch.sh

# Reload i3
i3-msg reload
# or restart i3
i3-msg restart
```

## Key Bindings

### Window Management
- `Alt + Enter` - Open terminal (Kitty)
- `Alt + d` - App launcher (Rofi)
- `Alt + Shift + f` - File manager (PCManFM-Qt)
- `Alt + Shift + v` - Volume control (Pavucontrol)
- `Alt + Shift + w` - WiFi connection (nmtui - scan & connect)
- `Alt + Shift + d` - Display settings (ARandR)
- `Alt + Shift + b` - Bluetooth manager
- `Print` or `Alt + Shift + s` - Screenshot (Flameshot)
- `Alt + h/j/k/l` - Navigate windows (vim-style)
- `Alt + Shift + h/j/k/l` - Move windows
- `Alt + Shift + q` - Close window
- `Alt + f` - Fullscreen

### Workspaces
- `Alt + 1-9` - Switch workspace
- `Alt + Shift + 1-9` - Move window to workspace

### Layouts
- `Alt + s` - Stacking layout
- `Alt + w` - Tabbed layout
- `Alt + e` - Toggle split layout
- `Alt + z` - Horizontal split
- `Alt + v` - Vertical split

### System
- `Alt + Shift + c` - Reload config
- `Alt + Shift + r` - Restart i3
- `Alt + Shift + e` - Exit i3
- `Alt + r` - Resize mode
- `Alt + Shift + Space` - Toggle floating

### Media Keys
- `F-keys` - Volume up/down/mute
- `Fn + Brightness` - Increase/decrease screen brightness (requires video group)
- **Polybar Modules**:
  - Click WiFi icon - Opens nmtui for network connections
  - Click Bluetooth icon - Opens Blueman manager
  - Scroll on Volume - Change volume
  - Scroll on Brightness - Adjust brightness

## Color Scheme

Using Catppuccin Mocha:
- Background: `#1e1e2e`
- Foreground: `#cdd6f4`
- Blue: `#89b4fa`
- Pink: `#f5c2e7`
- Red: `#f38ba8`
- Green: `#a6e3a1`
- Yellow: `#f9e2af`

## Customization

### Change Wallpaper
```bash
# Easy method - automatically sets and persists
feh --bg-scale ~/path/to/your-image.jpg

# Or copy to Pictures folder
cp your-image.jpg ~/Pictures/wallpaper.jpg
feh --bg-scale ~/Pictures/wallpaper.jpg
```
Wallpaper will restore automatically on login via `~/.fehbg`.

### Modify Polybar
Edit `~/.config/polybar/config.ini` to customize modules, colors, fonts, etc.

### Adjust Transparency/Blur
Edit `~/.config/picom/picom.conf` to change opacity and blur settings.

## Tips

- Use `i3-msg reload` after editing the i3 config
- Polybar will auto-reload when you restart i3
- Check polybar logs: `tail -f /tmp/polybar.log`
- Test rofi themes: `rofi-theme-selector`

### Set Wallpaper
```bash
feh --bg-scale ~/path/to/image.jpg
```
The wallpaper persists automatically via `~/.fehbg`.

### Brightness Control (First Time Setup)
If brightness keys don't work, you need to add yourself to the video group:
```bash
sudo usermod -aG video $USER
sudo usermod -aG input $USER
```
Then **log out and log back in** for the changes to take effect. After that, brightness keys and polybar scroll will work.

### High DPI / 4K Displays
Configured for 4K displays at 2560x1440 resolution with 125% scaling:
- **Display**: Automatically set to 2560x1440 on startup
- **DPI**: 120 (125% scaling)
- **GTK Apps**: text-scaling-factor 1.25
- **Qt Apps**: QT_FONT_DPI=120
- **Terminal**: Kitty with font size 12
- **Polybar**: Height 48pt, font size 16

To adjust for your display:
- Use `ARandR` (Alt+Shift+D) for resolution/scaling
- Edit `.Xresources` to change DPI
- Edit `.xprofile` for Qt/GTK scaling factors

## Fonts

Required fonts (install for best experience):
```bash
# Install Nerd Fonts for icons
sudo apt install fonts-noto fonts-font-awesome

# JetBrains Mono Nerd Font (download from nerdfonts.com)
# Or use system monospace fonts
```

## Credits

- [Catppuccin](https://github.com/catppuccin/catppuccin) color scheme
- [i3wm](https://i3wm.org/)
- [Polybar](https://github.com/polybar/polybar)
- [Kitty Terminal](https://sw.kovidgoyal.net/kitty/)

## License

Feel free to use and modify!

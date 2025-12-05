# My i3wm Dotfiles

A beautiful i3 window manager setup inspired by ThePrimeagen with Catppuccin Mocha color scheme.

## Screenshots
(Add your screenshots here!)

## Features

- **i3wm** - Tiling window manager with vim-like keybindings
- **Polybar** - Beautiful status bar with system info
- **Rofi** - Modern app launcher
- **Alacritty** - Fast, GPU-accelerated terminal emulator
- **Picom** - Compositor for transparency, rounded corners, and blur effects
- **Dunst** - Notification daemon
- **Flameshot** - Powerful screenshot tool
- **Thunar** - Fast file manager
- **CopyQ** - Advanced clipboard manager
- **Pavucontrol** - Volume control GUI
- **Blueman** - Bluetooth manager
- **Catppuccin Mocha** - Consistent color scheme across all apps
- **High DPI optimized** - Perfect for high-resolution laptops (HP Elite x360 1030 G2, etc.)

## Required Packages

```bash
sudo apt install i3 rofi polybar picom dunst feh nitrogen lxappearance \
                 alacritty thunar pavucontrol flameshot copyq blueman \
                 xfce4-power-manager arandr -y
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
- `Alt + Enter` - Open terminal (Alacritty)
- `Alt + d` - App launcher (Rofi)
- `Alt + Shift + f` - File manager (PCManFM-Qt)
- `Alt + Shift + v` - Volume control (Pavucontrol)
- `Alt + Shift + w` - WiFi connection (scan & connect to networks)
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
- Brightness keys - Increase/decrease screen brightness

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
nitrogen
# Select your wallpaper and set it
# It will be restored automatically on login
```

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
Easy way to set your wallpaper:
```bash
# Method 1: Use the helper script
~/bin/set-wallpaper.sh ~/Downloads/your-image.jpg

# Method 2: Manually
cp your-image.jpg ~/Pictures/wallpaper.jpg
feh --bg-scale ~/Pictures/wallpaper.jpg
```

The wallpaper will load automatically on next i3 restart.

### Brightness Control (First Time Setup)
If brightness keys don't work, you need to add yourself to the video group:
```bash
sudo usermod -aG video $USER
sudo usermod -aG input $USER
```
Then **log out and log back in** for the changes to take effect. After that, brightness keys and polybar scroll will work.

### High DPI Displays
If text is too small (e.g., on HP Elite x360 or similar high-res laptops):
- Fonts are already set to larger sizes (14-16pt)
- For terminal, install and configure a terminal with better font support:
  ```bash
  sudo apt install kitty
  # Edit ~/.config/kitty/kitty.conf and set: font_size 14.0
  ```
- Or for xterm/urxvt, add to `~/.Xresources`:
  ```
  Xft.dpi: 144
  XTerm*faceName: JetBrainsMono Nerd Font
  XTerm*faceSize: 14
  ```
  Then run: `xrdb ~/.Xresources`

## Fonts

Recommended fonts (install for`` best experience):
```bash
# JetBrains Mono Nerd Font (for icons in polybar/terminal)
# Noto Sans
# Font Awesome
```

## Credits

- Inspired by [ThePrimeagen](https://github.com/ThePrimeagen/dotfiles)
- [Catppuccin](https://github.com/catppuccin/catppuccin) color scheme
- [i3wm](https://i3wm.org/)
- [Polybar](https://github.com/polybar/polybar)

## License

Feel free to use and modify!

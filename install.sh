#!/usr/bin/env bash

# i3wm Dotfiles Installation Script
# Installs all configuration files to the appropriate locations

set -e

echo "Installing i3wm dotfiles..."

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Create necessary directories
echo -e "${BLUE}Creating config directories...${NC}"
mkdir -p ~/.config/{i3,polybar,rofi,picom,dunst}
mkdir -p ~/bin

# Backup existing configs
backup_dir=~/.config_backup_$(date +%Y%m%d_%H%M%S)
if [ -f ~/.config/i3/config ] || [ -f ~/.config/polybar/config.ini ]; then
    echo -e "${BLUE}Backing up existing configs to $backup_dir${NC}"
    mkdir -p "$backup_dir"
    [ -f ~/.config/i3/config ] && cp ~/.config/i3/config "$backup_dir/"
    [ -f ~/.config/polybar/config.ini ] && cp ~/.config/polybar/config.ini "$backup_dir/"
    [ -f ~/.config/rofi/config.rasi ] && cp ~/.config/rofi/config.rasi "$backup_dir/"
    [ -f ~/.config/picom/picom.conf ] && cp ~/.config/picom/picom.conf "$backup_dir/"
    [ -f ~/.config/dunst/dunstrc ] && cp ~/.config/dunst/dunstrc "$backup_dir/"
fi

# Link configuration files
echo -e "${BLUE}Linking configuration files...${NC}"
ln -sf "$(pwd)/i3/config" ~/.config/i3/config
ln -sf "$(pwd)/polybar/config.ini" ~/.config/polybar/config.ini
ln -sf "$(pwd)/rofi/config.rasi" ~/.config/rofi/config.rasi
ln -sf "$(pwd)/picom/picom.conf" ~/.config/picom/picom.conf
ln -sf "$(pwd)/dunst/dunstrc" ~/.config/dunst/dunstrc
ln -sf "$(pwd)/alacritty/alacritty.toml" ~/.config/alacritty/alacritty.toml

# Link X resources for high DPI
echo -e "${BLUE}Linking X resources...${NC}"
ln -sf "$(pwd)/.Xresources" ~/.Xresources
xrdb -merge ~/.Xresources

# Link scripts
echo -e "${BLUE}Linking scripts...${NC}"
ln -sf "$(pwd)/bin/launch-polybar.sh" ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/launch.sh

echo -e "${GREEN}Installation complete!${NC}"
echo ""
echo "Next steps:"
echo "1. Make sure all required packages are installed:"
echo "   sudo apt install i3 rofi polybar picom dunst feh nitrogen lxappearance -y"
echo ""
echo "2. Log out and select i3 as your session"
echo "   OR reload i3 if already running: i3-msg restart"
echo ""
echo "3. Set your wallpaper with: nitrogen"
echo ""
echo -e "${GREEN}Enjoy your new i3 setup!${NC}"

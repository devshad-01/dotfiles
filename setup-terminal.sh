#!/usr/bin/env bash

# Configure gnome-terminal for i3wm
# Sets proper font size for high DPI displays

echo "Configuring gnome-terminal..."

# Get the default profile UUID
profile=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")

# Set font
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ use-system-font false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ font 'JetBrainsMono Nerd Font 13'

# Set Catppuccin Mocha colors
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ background-color '#1e1e2e'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ foreground-color '#cdd6f4'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ bold-color '#cdd6f4'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ bold-color-same-as-fg true

echo "✓ gnome-terminal configured!"
echo "Open a new terminal to see changes (Alt+Enter)"

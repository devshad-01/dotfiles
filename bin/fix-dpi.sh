#!/bin/bash

# Set consistent DPI and font settings for all applications
# This ensures GTK, Qt, and X11 apps all use similar scaling

# GTK Settings (for apps like lxappearance, Firefox, etc.)
gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
gsettings set org.gnome.desktop.interface font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrainsMono Nerd Font 11'

# Qt Settings (for apps like pcmanfm-qt)
export QT_FONT_DPI=120
export QT_SCALE_FACTOR=1.0

echo "✓ Font and DPI settings applied for consistent app scaling"

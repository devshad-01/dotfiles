#!/bin/bash

# Simple wallpaper setter for i3
# Usage: ./set-wallpaper.sh /path/to/image.jpg

if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/image.jpg"
    echo "Example: $0 ~/Downloads/mywall.jpg"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found!"
    exit 1
fi

# Create Pictures directory if it doesn't exist
mkdir -p ~/Pictures

# Copy the image to Pictures/wallpaper.jpg
cp "$1" ~/Pictures/wallpaper.jpg

# Set it immediately
feh --bg-scale ~/Pictures/wallpaper.jpg

echo "✓ Wallpaper set! It will load automatically on next login."

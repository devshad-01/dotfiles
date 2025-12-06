#!/bin/bash
# Touchpad configuration script

# Find touchpad device
TOUCHPAD=$(xinput list | grep -i "touchpad\|glidepoint" | grep -o 'id=[0-9]*' | cut -d= -f2 | head -1)

if [ -n "$TOUCHPAD" ]; then
    # Enable tap to click
    xinput set-prop $TOUCHPAD "libinput Tapping Enabled" 1
    
    # Enable natural scrolling (optional - comment out if you don't like it)
    # xinput set-prop $TOUCHPAD "libinput Natural Scrolling Enabled" 1
    
    # Set tap button mapping (1 = left click, 3 = right click)
    xinput set-prop $TOUCHPAD "libinput Tapping Button Mapping Enabled" 1 0
    
    echo "Touchpad configured: tap-to-click enabled"
else
    echo "No touchpad found"
fi

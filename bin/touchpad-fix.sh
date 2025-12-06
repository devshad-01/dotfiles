#!/bin/bash
# Enable tap to click
xinput set-prop "AlpsPS/2 ALPS GlidePoint" "libinput Tapping Enabled" 1

# Enable two-finger tap for right click
xinput set-prop "AlpsPS/2 ALPS GlidePoint" "libinput Tapping Button Mapping Enabled" 1 0

# Enable natural scrolling (optional - comment out if you don't like it)
# xinput set-prop "AlpsPS/2 ALPS GlidePoint" "libinput Natural Scrolling Enabled" 1

# Increase cursor speed
xinput set-prop "AlpsPS/2 ALPS GlidePoint" "libinput Accel Speed" 0.5

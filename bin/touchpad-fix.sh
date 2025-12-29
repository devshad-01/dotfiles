#!/bin/bash
# Enable tap to click
xinput set-prop "AlpsPS/2 ALPS GlidePoint" "Synaptics Tap Action" 2 3 0 0 1 3 2

# Enable two-finger tap for right click (already set)
# xinput set-prop "AlpsPS/2 ALPS GlidePoint" "Synaptics Tap Action" 2 3 0 0 1 3 2

# Set normal scrolling (positive values for vertical)
xinput set-prop "AlpsPS/2 ALPS GlidePoint" "Synaptics Scrolling Distance" 76 76

# Increase cursor speed
xinput set-prop "AlpsPS/2 ALPS GlidePoint" "Synaptics Move Speed" 1.0 1.75 0.052056 0.0

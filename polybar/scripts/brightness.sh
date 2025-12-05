#!/bin/bash

# Polybar brightness script

if command -v xbacklight &> /dev/null; then
    brightness=$(xbacklight -get | cut -d. -f1)
    echo "%{F#f9e2af}󰃠%{F-} $brightness%"
elif command -v brightnessctl &> /dev/null; then
    brightness=$(brightnessctl get)
    max=$(brightnessctl max)
    percent=$((brightness * 100 / max))
    echo "%{F#f9e2af}󰃠%{F-} $percent%"
else
    echo ""
fi

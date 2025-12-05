#!/bin/bash

# Polybar brightness script

if brightnessctl get &>/dev/null; then
    brightness=$(brightnessctl get)
    max=$(brightnessctl max)
    percent=$((brightness * 100 / max))
    echo "%{F#f9e2af}BRI%{F-} $percent%"
else
    echo "%{F#f9e2af}BRI%{F-} N/A"
fi

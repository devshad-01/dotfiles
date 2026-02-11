#!/bin/bash
if brightnessctl get &>/dev/null; then
    brightness=$(brightnessctl get)
    max=$(brightnessctl max)
    percent=$((brightness * 100 / max))
    echo "%{F#f9e2af}%{F-} $percent%"
else
    echo "%{F#f9e2af}%{F-} N/A"
fi

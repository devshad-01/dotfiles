#!/bin/bash
# Battery warning script

while true; do
    # Get battery percentage
    BAT=$(acpi -b | grep -oP '\d+(?=%)' | head -1)
    
    if [ -n "$BAT" ]; then
        if [ "$BAT" -le 10 ]; then
            dunstify -u critical "Critical Battery" "Battery at ${BAT}% - Shutting down soon!"
        elif [ "$BAT" -le 20 ]; then
            dunstify -u critical "Low Battery" "Battery at ${BAT}% - Plug in charger!"
        fi
    fi
    
    # Check every 1 minute
    sleep 60
done
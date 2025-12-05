#!/bin/bash

# Polybar Bluetooth status script

if command -v bluetoothctl &> /dev/null; then
    power_status=$(bluetoothctl show | grep "Powered: yes")
    
    if [ -n "$power_status" ]; then
        # Check if any device is connected
        connected=$(bluetoothctl devices Connected | wc -l)
        
        if [ "$connected" -gt 0 ]; then
            echo "%{F#89b4fa}󰂯%{F-} ON"
        else
            echo "%{F#6c7086}󰂲%{F-} OFF"
        fi
    else
        echo "%{F#6c7086}󰂲%{F-}"
    fi
else
    echo ""
fi

#!/bin/bash

# Polybar Bluetooth status script

if bluetoothctl show 2>/dev/null | grep -q "Powered: yes"; then
    # Bluetooth is on
    if bluetoothctl devices Connected 2>/dev/null | grep -q "Device"; then
        echo "%{F#89b4fa}BT%{F-} ON"
    else
        echo "%{F#6c7086}BT%{F-} OFF"
    fi
else
    # Bluetooth is off or not available
    echo "%{F#6c7086}BT%{F-}"
fi

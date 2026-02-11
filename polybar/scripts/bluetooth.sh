#!/bin/bash
if bluetoothctl show 2>/dev/null | grep -q "Powered: yes"; then
    if bluetoothctl devices Connected 2>/dev/null | grep -q "Device"; then
        echo "%{F#89b4fa}%{F-}"
    else
        echo "%{F#6c7086}%{F-}"
    fi
else
    echo "%{F#6c7086}%{F-}"
fi

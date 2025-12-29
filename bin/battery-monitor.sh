#!/bin/bash
# Battery monitor script for low battery warning

BATTERY=$(upower -e | grep BAT)
BATTERY_INFO=$(upower -i $BATTERY)

PERCENTAGE=$(echo "$BATTERY_INFO" | grep "percentage" | awk '{print $2}' | tr -d '%')
STATE=$(echo "$BATTERY_INFO" | grep "state" | awk '{print $2}')

if [ "$STATE" = "discharging" ] && [ "$PERCENTAGE" -le 20 ]; then
    dunstify -u critical "Low Battery" "Battery at $PERCENTAGE%. Plug in your charger!"
elif [ "$STATE" = "discharging" ] && [ "$PERCENTAGE" -le 10 ]; then
    dunstify -u critical "Critical Battery" "Battery at $PERCENTAGE%. Shutting down soon!"
fi
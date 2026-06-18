#!/bin/bash
# Battery warning script - only warns when discharging at critical levels

WARNED_15=0
WARNED_10=0
WARNED_5=0

while true; do
    BAT=$(acpi -b | grep -oP '\d+(?=%)' | head -1)
    STATUS=$(acpi -b | grep -oP '(Charging|Discharging|Full)' | head -1)

    if [ -n "$BAT" ] && [ "$STATUS" = "Discharging" ]; then
        if [ "$BAT" -le 5 ] && [ "$WARNED_5" -eq 0 ]; then
            dunstify -u critical -t 0 "⚠ Critical Battery!" "Battery at ${BAT}% — plug in NOW!"
            WARNED_5=1
        elif [ "$BAT" -le 10 ] && [ "$WARNED_10" -eq 0 ]; then
            dunstify -u critical -t 10000 "🔋 Low Battery" "Battery at ${BAT}% — plug in charger"
            WARNED_10=1
        elif [ "$BAT" -le 15 ] && [ "$WARNED_15" -eq 0 ]; then
            dunstify -u normal -t 8000 "🔋 Battery Getting Low" "Battery at ${BAT}%"
            WARNED_15=1
        fi
    else
        # Reset warnings when charging or full
        WARNED_15=0
        WARNED_10=0
        WARNED_5=0
    fi

    sleep 60
done

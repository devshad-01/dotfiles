#!/bin/bash
# Beautiful lockscreen with blur effect

# Take screenshot, blur it, and lock
scrot /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 10% -scale 1000% /tmp/screen_locked.png
i3lock -i /tmp/screen_locked.png
rm /tmp/screen_locked.png

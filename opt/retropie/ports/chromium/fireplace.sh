#!/bin/bash
xset -dpms s off s noblank
matchbox-window-manager -use_titlebar no &
/home/pi/retropie-custom/qjoypad3/joypad_watcher.sh "8bitdo_sf30pro" &
/usr/bin/chromium-browser --use-gl=egl --kiosk --start-fullscreen --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-extensions --disable-component-update --app=https://www.youtube.com/embed/eyU3bRy2x44?autoplay=1


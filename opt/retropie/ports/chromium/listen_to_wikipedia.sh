#!/bin/bash
xset -dpms s off s noblank
matchbox-window-manager -use_titlebar no &
unclutter &
qjoypad "iNNext" &
/usr/bin/chromium-browser --use-gl=egl --autoplay-policy=no-user-gesture-required --kiosk --start-fullscreen --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-extensions --disable-component-update --app=http://jackhiggins.ie/listen-to-wikipedia?fullscreen

#!/bin/bash
xset -dpms s off s noblank
matchbox-window-manager -use_titlebar no &
unclutter &
qjoypad "iNNext" &
/usr/bin/chromium-browser --use-gl=egl --kiosk --start-fullscreen --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-extensions --disable-component-update --app=http://listen.hatnote.com/


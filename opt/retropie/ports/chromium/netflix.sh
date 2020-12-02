#!/bin/bash
xset -dpms s off s noblank
matchbox-window-manager -use_titlebar no &
qjoypad "iNNext" &
/usr/bin/chromium-browser --use-gl=egl --kiosk --start-fullscreen --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-extensions --user-agent="Mozilla/5.0 (X11; CrOS armv7l 12371.89.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36" --disable-component-update --app=https://www.netflix.com


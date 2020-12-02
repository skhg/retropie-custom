#!/bin/bash
xset -dpms s off s noblank
matchbox-window-manager -use_titlebar no &
unclutter &
nice -n -20 qjoypad "YouTubeTV" &
/usr/bin/chromium-browser --use-gl=egl --kiosk --start-fullscreen --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --user-agent="Mozilla/5.0 (SMART-TV; Linux; Tizen 2.4.0) AppleWebkit/538.1 (KHTML, like Gecko) SamsungBrowser/1.1 TV Safari/538.1" --disable-component-update --app=https://www.youtube.com/tv


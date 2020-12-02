#!/bin/bash
xset -dpms s off s noblank
matchbox-window-manager -use_titlebar no &
qjoypad "iNNext" &
/usr/bin/chromium-browser --disable-component-update --use-gl=egl --user-agent="Mozilla/5.0 (X11; CrOS armv7l 12371.89.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36"


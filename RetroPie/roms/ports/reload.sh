#!/usr/bin/env bash

cd ~/retropie-custom || exit
git pull
./setup.sh
pid=$(pidof /opt/retropie/supplementary/emulationstation/emulationstation)
kill "$pid"
sudo systemctl restart autologin@tty1.service
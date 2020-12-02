#!/usr/bin/env bash

cd ~/retropie-custom || exit
git pull
./setup.sh
sudo systemctl restart autologin@tty1.service
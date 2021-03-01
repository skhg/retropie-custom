#!/usr/bin/env bash

set -exo pipefail

echo "Starting chromium-browser with configuration: \"$1\"..."

echo "Configuring chromium-browser dependencies..."

sudo apt-get -y install xserver-xorg-legacy qjoypad unclutter inotify-tools

echo "Configuring chromium launcher..."

sed -i '$ d' /opt/retropie/configs/ports/chromium/emulators.cfg
echo "default = \"$1\"" >> /opt/retropie/configs/ports/chromium/emulators.cfg
"/opt/retropie/supplementary/runcommand/runcommand.sh" 0 _PORT_ "chromium" ""

#!/usr/bin/env bash

set -eo pipefail

echo "Map the QJoyPad configurations..."

rm -rf ~/.qjoypad3
ln -s ~/retropie-custom/qjoypad3 ~/.qjoypad3

echo "Map the chromium-browser configurations..."

rm /opt/retropie/configs/ports/chromium/emulators.cfg
ln -s ~/retropie-custom/opt/retropie/configs/ports/chromium/emulators.cfg /opt/retropie/configs/ports/chromium/emulators.cfg

echo "Map the RetroPie chromium launchers..."

for filename in ~/retropie-custom/RetroPie/roms/ports/*.sh; do
	base=$(basename "$filename")
	echo "Mapping $base..."
	ln -sf "$filename" ~/RetroPie/roms/ports/"$base"
done

echo "Map the chromium desktop environment launchers..."

for filename in ~/retropie-custom/opt/retropie/ports/chromium/*.sh; do
	base=$(basename "$filename")
	echo "Mapping $base..."
	sudo ln -sf "$filename" /opt/retropie/ports/chromium/"$base"
done

echo "Set up scheduled jobs..."

crontab -r
(crontab -l 2>/dev/null; echo "$(cat ~/retropie-custom/cron/crontab)") | crontab -

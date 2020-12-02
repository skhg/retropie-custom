#!/usr/bin/env bash

set -eo pipefail

echo "Map the QJoyPad configurations..."

rm -rf ~/.qjoypad3
ln -s ~/retropie-custom/qjoypad3 ~/.qjoypad3

echo "Map the chromium-browser configurations..."

echo "TO DO..."

echo "Map the chromium launchers..."

for filename in ~/retropie-custom/RetroPie/roms/ports/*.sh; do
	base=$(basename $filename)
	echo "Mapping $base..."
	ln -sf $filename ~/RetroPie/roms/ports/$base
done

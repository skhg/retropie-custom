#!/usr/bin/env bash

set -exo pipefail

echo "Map the QJoyPad configurations..."

rm -rf ~/.qjoypad3
ln -s ~/retropie-custom/qjoypad3 ~/.qjoypad3

echo "Map the chromium-browser configurations..."


echo "Map the chromium launchers..."
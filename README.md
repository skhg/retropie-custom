# retropie
🎮 Setup a retro gaming system on the Raspberry Pi 3B+

## Hardware

* [Raspberry Pi 3B+](https://www.amazon.de/-/en/gp/product/B07BDR5PDW/ref=ppx_yo_dt_b_asin_title_o04_s00?ie=UTF8&psc=1)
* [Raspberry Pi tall case](https://www.amazon.de/-/en/gp/product/B017SZ3T66/ref=ppx_yo_dt_b_asin_title_o02_s00?ie=UTF8&psc=1)
* [32GB microSD card](https://www.amazon.de/-/en/gp/product/B06XYHN68L/ref=ppx_yo_dt_b_asin_title_o02_s01?ie=UTF8&psc=1)
* Right-angle [HDMI cable](https://www.amazon.de/-/en/gp/product/B076YB79DL/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1)
* SNES-style [gamepads](https://www.amazon.de/-/en/gp/product/B01N59IUV5/ref=ppx_yo_dt_b_asin_title_o06_s00?ie=UTF8&psc=1)
* Apple [Magic Keyboard](https://www.apple.com/shop/product/MRMH2LL/A/magic-keyboard-with-numeric-keypad-us-english-space-gray)
* Apple [Magic Trackpad](https://www.apple.com/shop/product/MRMF2LL/A/magic-trackpad-2-space-gray)

## System setup

1. Download and install the Raspberry Pi [Imager](https://www.raspberrypi.org/software/)
1. Use this to flash the microSD card
1. `touch /Volumes/boot/ssh` to enable SSH on boot
1. `touch /Volumes/boot/wpa_supplicant.conf` to create WiFi configuration file
1. Add WiFi config as specified [here](https://www.raspberrypi.org/documentation/configuration/wireless/headless.md)
1. Insert microSD and run first boot
1. Change user `pi` password
1. `sudo apt-get install vim`
1. Copy SSH key to `~/.ssh/authorized_keys`
1. Run `sudo raspi-config` and...
   1. Change GPU memory to 128MB
   1. Disable the splash screen on boot
1. Clone this repo to the Raspberry Pi `TODO SETUP SCRIPT`

## RetroPie setup
1. [Install RetroPie](https://retropie.org.uk/docs/Manual-Installation/#install-retropie)
1. Configure to boot into EmulationStation
1. Install [RetroPie-Extra](https://github.com/zerojay/RetroPie-Extra)

## Chromium setup
1. Run the Chromium ["Media Centre" script](https://blog.vpetkov.net/2020/03/30/raspberry-pi-netflix-one-line-easy-install-along-with-hulu-amazon-prime-disney-plus-hbo-spotify-pandora-and-many-others/)
1. 

## Steam Link setup
1. Follow these [instructions](https://uk.pcmag.com/gallery/123035/how-to-use-a-raspberry-pi-and-steam-link-to-stream-pc-games-to-your-tv)
1. Install Steam Link streaming on the host machine
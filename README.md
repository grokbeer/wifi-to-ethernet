# WiFi-to-Ethernet

WiFi-to-Ethernet allows you to use an inexpensive Raspberry Pi to connect an Ethernet-only device, such as a TV set-top box or older gaming console, to your WiFi network through the Raspberry Pi's Ethernet port. It requires that the Raspberry Pi has built-in WiFi or a WiFi dongle.

## How it works

WiFi-to-Ethernet will automatically join the configured WiFi network and present a DHCP server on its Ethernet port and route traffic from any Ethernet-connected devices to the WiFi network.

## Required hardware
 
This project has been developed and tested with a Raspberry Pi 1 with an Edimax N150 802.11n WLAN Adapter. It should also work for any Raspberry Pi model and with any other board that supports balenaOS, provided it as on-board Ethernet and balenaOS support for its on-board Wifi or connected WiFi dongle.

## Known issues
  
If you're using the using an *rtl8192cu*-based WiFi dongle on a Raspberry Pi 1/2 you **must** use *balenaOS 2.26.0+rev1* for the driver to work correctly.

## Setup and configuration

Running this project is as simple as deploying it to a balenaCloud application. You can do it in just one click by using the button below:

[![deploy button](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/grokbeer/wifi-to-ethernet&defaultDeviceType=raspberry-pi)

## Getting Help

If you're having any problem, please [raise an issue](https://github.com/grokbeer/wifi-to-ethernet/issues/new) on GitHub and I will be happy to help.

## Contributing

Do you want to help make Wifi-to-Ethernet better? Hope to hear from you!

## Credits

- **resin-route**: Wifi-to-Ethernet uses @arpitjindal97's [resin-route](https://github.com/arpitjindal97/resin-route) project to configure the networking services
- **wifi-repeater**: Logo based on one from [wifi-repeater](https://github.com/balenalabs/wifi-repeater) by balenalabs.

## License

WiFi-to-Ethernet is free software, and may be redistributed under the terms specified in the [license](https://github.com/grokbeer/wifi-to-ethernet/blob/master/LICENSE).

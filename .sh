# edit with nano /etc/network/interfaces

auto lo
iface lo inet loopback

auto enp0s31f6
iface enp0s31f6 inet dhcp

auto wlp2s0
iface wlp2s0 inet dhcp

wpa-ssid NAME_OF_WIFI_CONNECTION
wpa-psk PASSWORD_OF_WIFI_CONNECTION

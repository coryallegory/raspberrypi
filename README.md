# blackbird

# Provisioning

1. Install vanilla Raspbian on an SD card (Buster Lite at the time of writing)
   1. https://www.raspberrypi.org/downloads/raspbian/
1. Booth raspberry pi with SD card
1. Login with user pi, password raspberry
1. Set keyboard as 'us' layout
   1. `sudo sed -i 's/XKBLAYOUT=.*/XKBLAYOUT="us"/' /etc/default/keyboard`
   1. Requires reboot
1. Rename host
   1. `sudo sed -i 's/127\.0\.1\.1.*/127\.0\.1\.1\t\t<name>/' /etc/hosts`, replacing `<name>` with new hostname
   1. `echo '<name>' | sudo tee /etc/hostname`, replacing `<name>` with new hostname
   1. Requires reboot
1. Enable ssh
   1. `sudo systemctl enable ssh && sudo systemctl start ssh`
1. (Optional) Enable wifi
   1. `wpa_passphrase '<ssid>' '<passphrase>' | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null`, replacing `<ssid>` and `<passphrase>`
   1. `wpa_cli -i wlan0 reconfigure` to reconfigure the interface
 

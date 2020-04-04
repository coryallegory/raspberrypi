# blackbird

# Provisioning

1. Install vanilla Raspbian on an SD card (Buster Lite at the time of writing)
   1. https://www.raspberrypi.org/downloads/raspbian/
1. Booth raspberry pi with SD card
1. Login with user pi, password raspberry

```setup.sh
# Set keyboard as 'us' layout
sudo sed -i 's/XKBLAYOUT=.*/XKBLAYOUT="us"/' /etc/default/keyboard`

# Rename host
HOSTNAME=<hostname>
sudo sed -i "s/127\.0\.1\.1.*/127\.0\.1\.1\t\t$HOSTNAME/" /etc/hosts
echo $HOSTNAME | sudo tee /etc/hostname

# Enable ssh
sudo systemctl enable ssh && sudo systemctl start ssh

# (Optional) Enable wifi
SSID=<ssid>
PASSPHRASE=<passphrase>
wpa_passphrase $SSID $PASSPHRASE | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null
wpa_cli -i wlan0 reconfigure

reboot
```

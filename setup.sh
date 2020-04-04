
# Set keyboard as 'us' layout
sudo sed -i 's/XKBLAYOUT=.*/XKBLAYOUT="us"/' /etc/default/keyboard`

# Rename host
read -p "New hostname for device: " HOSTNAME
sudo sed -i "s/127\.0\.1\.1.*/127\.0\.1\.1\t\t$HOSTNAME/" /etc/hosts
echo $HOSTNAME | sudo tee /etc/hostname

# Enable ssh
sudo systemctl enable ssh && sudo systemctl start ssh

# (Optional) Enable wifi
read -p 'Wifi SSID: ' SSID
read -sp 'Wifi Passphrase: ' PASSPHRASE
wpa_passphrase $SSID $PASSPHRASE | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null
wpa_cli -i wlan0 reconfigure

reboot
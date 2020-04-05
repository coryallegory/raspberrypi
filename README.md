# blackbird

# Provisioning

1. Install vanilla Raspbian on an SD card (Buster Lite at the time of writing)
   1. https://www.raspberrypi.org/downloads/raspbian/
1. Booth raspberry pi with SD card
1. Login with user pi, password raspberry
1. Execute setup script
   1. `bash <(curl -s https://github.com/coryallegory/blackbird/blob/master/setup.sh)`
1. Wait for device to reboot, reconnect with new user account
1. Install Docker https://docs.docker.com/install/linux/docker-ce/debian/#install-using-the-convenience-script
   1. `bash <(curl -s https://github.com/coryallegory/blackbird/blob/master/docker.sh)`

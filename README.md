# blackbird

# Provisioning

1. Install vanilla Raspbian on an SD card (Buster Lite at the time of writing)
   1. https://www.raspberrypi.org/downloads/raspbian/
1. Booth raspberry pi with SD card
1. Login with user pi, password raspberry
1. Execute setup script
   1. `bash <(curl -s https://github.com/coryallegory/blackbird/blob/master/setup.sh)`
1. Wait for device to reboot, reconnect with new user account
1. Update the `apt` package index:
   1. `sudo apt-get update && sudo apt-get -y upgrade`
1. Install Docker & Docker-Compose https://docs.docker.com/install/linux/docker-ce/debian/#install-using-the-convenience-script
   1. `bash <(curl -s https://github.com/coryallegory/blackbird/blob/master/docker.sh)`

# PiHole

https://pi-hole.net/
1. Copy to machine
1. `sudo docker-compose -f <path to file> up`
1. http://pi.hole/admin password. Run docker logs pihole | grep random to find your random pass.

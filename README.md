# Raspberry Pi

This repository is intended as a reference for various raspberry pi experiments.

# Initial Provisioning

1. Install vanilla Raspbian on an SD card (Buster Lite at the time of writing).
   1. https://www.raspberrypi.org/downloads/raspbian/
1. Create a file named `ssh` to the root of the SD card (fat32 boot partition), to enable SSH.
1. Connect raspberry pi to ethernet and boot with SD card.
1. Use Putty to SSH to `raspberrypi`. Login with user `pi`, password `raspberry`.
1. Execute setup script
   1. `curl https://raw.githubusercontent.com/coryallegory/raspberrypi/master/setup.sh -o /tmp/setup.sh`
   1. `sudo bash /tmp/setup.sh`

# Installing Docker & Docker-Compose

1. Install Docker & Docker-Compose https://docs.docker.com/install/linux/docker-ce/debian/#install-using-the-convenience-script
   1. `bash <(curl -s https://github.com/coryallegory/blackbird/blob/master/docker.sh)`

# PiHole

https://pi-hole.net/
1. Copy to machine
1. `sudo docker-compose -f <path to file> up`
1. http://pi.hole/admin password. Run docker logs pihole | grep random to find your random pass.

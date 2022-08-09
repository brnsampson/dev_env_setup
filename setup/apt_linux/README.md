# Pre-setup

Before using this there are a small number of things to be done:
- install git. Otherwise it's going to be hard to fetch this repo.

# Virtualbox
Link for non-linux folks: https://virtualbox.org/wiki/Linux_Downloads

Notes:
Update the first line in vbox_install.sh to reference the release version you are using. See the "Debian-based Linux distributions" section of https://virtualbox.org/wiki/Linux_Downloads

The vbox_install.sh script should be run as root. E.G.

sudo chmod +x vbox_install.sh
sudo ./vbox_install.sh

# Vagrant
Link for non-linux folks: https://www.vagrantup.com/downloads.html

The vagrant_install.sh script has one sudo call inside the script that you will have to enter a password for, but does not itself need to be run as sudo:

sudo chmod +x vagrant_install.sh
./vagrant_install.sh

NOTE: we install 2.1.5 instead of 2.2.X because there appears to be an outstanding bug with their linked version of SSL in 2.2.X still. Oh hashicorp.

# Packer
Link for non-linux folks: https://www.packer.io/downloads

This one works identically to the Vagrant install.

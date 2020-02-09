#!/usr/bin/bash
# Script for fetching stuff through curl at OS setup

# Downloads, installs keybase, 
# and then removes the .deb file to save space
sudo touch /etc/default/keybase #to prevent keybase repo being added
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install ./keybase_amd64.deb
run_keybase
sudo rm keybase_amd64.deb

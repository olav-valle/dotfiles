#!/usr/bin/bash

# Setup script that runs the other scripts in order.

 #installers 
./aptinstall.sh
./gamestuff.sh
./snapinstall.sh

 #system setup
 # Still TODO
# ./raid.sh
# ./samba.sh
# ./rsync.sh
# ./dotfiles.sh
# ./gnome.sh

figlet "MAGIC HAS BEEN PERFORMED" | lolcat

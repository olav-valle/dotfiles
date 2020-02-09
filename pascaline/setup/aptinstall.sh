#!/usr/bin/bash
# Setup script for (almost) all apt installs needed on a fresh install
sudo apt update

function install {
 which $1 &> /dev/null

 if [ $? -ne 0 ]; then
	echo "Installing: ${1}..."
	sudo apt install -y $1
 else
	echo "Already installed: ${1}"
 fi
}

#system utilities
install terminator #the robot future of terminals
install htop #system monitor
install tmux #terminal mulitplex
install blueman #bluetooth
install samba
install gparted
install neovim
install exfat-utils
install openvpn
install dconf-editor
install cifs-utils #for mounting samba shares as drives
install pavucontrol #something to do with bluetooth audio



#utilities
install vlc

#A/V editing
install audacity
install jack2

# install jackd2
# Possibly a good idea to do this manually, for now?
# Jackd2 presents an installer confirmation outside of apt

# sensor monitoring
install lm-sensors
install psensor


#gnome stuff
install gnome-tweaks

#python and pip
install python3-venv
install python3-pip # python package manager
#pycharm is installed through snap

#jvm and jdk
install openjdk-13-jre # java 13 runtime
install openjdk-13-jdk # java 13 dev kit
install openjdk-13-doc # java 13 doc
install openjdk-13-dbg # java 13 debugging symbols
#intellij is installed through snap

#other app/lib managers
install snapd # snap package manager
# run snapinstall.sh 

#lols
install figlet
install lolcat


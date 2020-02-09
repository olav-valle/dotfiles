#!/usr/bin/bash
# Setup script for steam, lutris, wine and other gaming related
# functionality 

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


#sudo dpkg --add-architecture i386 # enable 32 bit architecture
install steam # Steam
install lutris # lutris

# unsure if this wine stuff actually works with the ubuntu repo,
# or if need to add WineHQ ppa/apt-key
# thoughts are that lutris handles most of the runners anyway,
# so it's not a problem?

install wine # wine from ubuntu repo
install winetricks # simple tool to work around common wine problems

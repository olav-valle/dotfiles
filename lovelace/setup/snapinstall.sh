#!/usr/bin/bash

which snap &> /dev/null

if [ $? -ne 0 ]; then
	sudo apt install snapd
else
	echo "snapd already installed, proceeding with installations."
fi

sudo snap refresh # like 'apt update' for snaps

function snapInst {
 which $1 &> /dev/null #check for existing install

 if [ $? -ne 0 ]; then
# if existing install was not found, install 
	echo "Snap is installing : ${1}..."
	sudo snap install $1 $2
 else
	echo "Already installed through Snap: ${1}"
 fi
}

snapInst discord
snapInst messengerport
#snapInst caprine #uncomment if messengerport starts to suck
snapInst intellij-idea-ultimate --classic
snapInst pycharm-professional --classic

#! /usr/bin/env bash

PWD=$NAUTILUS_SCRIPT_CURRENT_URI
# echo " " >> $HOME/current_uri.txt
# echo $PWD >> $HOME/current_uri.txt
PWD=$(echo "$PWD" | sed 's/%20/ /g')
# echo $PWD >> $HOME/current_uri.txt
PWD=$(echo "$PWD" | sed 's/file:\/\///g')
# echo $PWD >> $HOME/current_uri.txt

terminator --working-directory="$PWD"

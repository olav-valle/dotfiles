#! /usr/bin/env bash

FILES=$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
#/home/mort/Documents/ntnu/20-21/appdev/Chapter 3 1st JavaHTTPServer.pdf /home/mort/Documents/ntnu/20-21/appdev/Chapter 3 1st JavaHTTPServer.pptx /home/mort/Documents/ntnu/20-21/appdev/Chapter 5 ORM - 1.pptx


PWD=$NAUTILUS_SCRIPT_CURRENT_URI

#echo " " >> $HOME/current_uri.txt
#echo "$(date)" >> $HOME/current_uri.txt
#echo $PWD >> $HOME/current_uri.txt
#echo "FILES: $FILES" >> $HOME/current_uri.txt
#echo $FILES 
# strip off absolute path, leaving only "filename.ext"
FILE=$(echo "$FILES" | sed 's/^.*\/\(\w*[.]\w*\)$/\1/')
#echo "FILE: $FILE" >> $HOME/current_uri.txt
#PWD=$(echo "$PWD" | sed 's/%20/ /g')
#echo $PWD >> $HOME/current_uri.txt
#PWD=$(echo "$PWD" | sed 's/file:\/\///g')
#echo "PWD: $PWD" >> $HOME/current_uri.txt
soffice --convert-to pdf "$FILE"
#terminator --working-directory="$PWD" -x 'soffice --convert-to pdf --outdir "./" "$FILE"'


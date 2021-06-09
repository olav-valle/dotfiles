#! /usr/bin/env bash

# Opens a new txt document file in the current directory 
FIND_FILE="newDocument"
TXT=".txt"
I=0

while [ -f "$FIND_FILE$I$TXT" ]
  do
    I=$((I+1))
  done

gedit "$FIND_FILE$I$TXT"

#! /usr/bin/env bash
# converts a single file to .pdf using Open Office. 
FILES=$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
# strip off the absolute path from $FILES, leaving only "fileName.ext"
# https://unix.stackexchange.com/questions/243207/how-can-i-delete-everything-until-a-pattern-and-everything-after-another-pattern/243236 
FILE=$(echo "$FILES" | sed 's/^.*\/\(\w*[.]\w*\)$/\1/')

soffice --convert-to pdf "$FILE"


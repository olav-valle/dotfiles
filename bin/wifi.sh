#!/bin/bash
echo 'Resetting wifi with rfkill (un)block 1.'
echo 'Check that ID 1 is still correct for wifi.'
# fetch correct ID from rfkill output with awk?
# check column 2 for 'wifi', then use value from column 1 on that row?
# todo: add check for status, so we don't try to block if it's already blocked.
rfkill block 1
sleep 0.1
rfkill unblock 1


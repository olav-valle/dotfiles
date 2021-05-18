#!/usr/bin/bash
#setup script for mdadm raid 0

# first attempt, where we try to save the existing disks

mdadm --create /dev/md0 games

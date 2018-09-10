#!/bin/bash
# This script makes a backup of my home directory

cd /home

# This creates the archive
tar cf /var/tmp/home_ivan.tar ivan > /dev/null 2 >&1

# First remove the old bzip2 file. Redirect errors because this generates some if the archive does not exist. Then create a new compressed file.
rm /var/tmp/home_ivan.tar
bzip2 /var/tmp/home_ivan.tar

# Copy the file to another host - we have ssh keys for making this work without intervantion
scp /var/tmp/home_ivan.tar.bz2 bordeaux:/opt/backup/ivan >  /dev/null 2>&1

# Create a timestamp in a logfile.
date >> /home/ivan/log/home_backup.log
echo bacckup succeeded >> /home/ivan/log/home_backup.log
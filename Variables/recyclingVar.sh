#!/bin/bash
                                                                                                 
# This script makes a backup of my home directory.

# Change the values of the variables to make the script work for you:
ivanBACKUPDIR=/home
BACKUPFILES=ivan
TARFILE=/var/tmp/home_ivan.tar
BZIPFILE=/var/tmp/home_ivan.tar.bz2
SERVER=bordeaux
REMOTEDIR=/opt/backup/ivan
LOGFILE=/home/ivan/log/home_backup.log

cd $BACKUPDIR

# This creates the archive
tar cf $TARFILE $BACKUPFILES > /dev/null 2>&1
                                                                                                 
# First remove the old bzip2 file.  Redirect errors because this generates some if the archive 
# does not exist.  Then create a new compressed file.
rm $BZIPFILE 2> /dev/null
bzip2 $TARFILE

# Copy the file to another host - we have ssh keys for making this work without intervention.
scp $BZIPFILE $SERVER:$REMOTEDIR > /dev/null 2>&1

# Create a timestamp in a logfile.
date >> $LOGFILE
echo backup succeeded >> $LOGFILE
#!/bin/bash

# This script converts all files in a directory to upper case

LIST=$(ls /home/ivan/scripts/Linux-Scripts/tldp_exercises/9.RepetitiveTasks/9.5.BreakAndContinue/upper)

for NAME in $LIST; do
	if [[ "$NAME" != *[[:upper:]]* ]]; then
		continue
	fi
	ORIGINAL_NAME="$NAME"
	NEW_NAME=`echo $NAME | tr 'A-Z' 'a-z'`
	
	mv "$ORIGINAL_NAME" "$NEW_NAME"
	echo "New name for $ORIGINAL_NAME is $NEW_NAME"
done
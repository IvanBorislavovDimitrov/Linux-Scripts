#!/bin/bash

# This program compress files. User chooses a type of the new file and the program compresses it.
# The program works with one parameter (filename).

FILENAME="$1"

echo "Enter name of the format."
echo "Available formats: gzip, bzip2, compress, zip"

read FORMAT

if [ -f $FILENAME ]; then
	case "$FORMAT" in
		"gzip")
			gzip "$FILENAME"
		;;
		"bzip2")
			bzip2 "$FILENAME"
		;;
		"compress")
			compress "$FILENAME"
		;;
		"zip")
			zip "$FILENAME"
		;;
	esac
else 
	echo "File doesn't exist"
fi
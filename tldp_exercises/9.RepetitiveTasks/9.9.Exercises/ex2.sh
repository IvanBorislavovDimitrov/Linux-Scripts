#!/bin/bash

if [ "$#" != "1" ]; then 
	echo "Invalid number of arguments"
	exit 1
fi

DIRECTORY="$1"

if ! [[ -d "$DIRECTORY" ]]; then 
	 echo "Passed parameter is not a directory."
fi

FILES=$(ls $DIRECTORY | sort -n -r)
COUNT=0
for F in $FILES; do
	FILEPATH_AND_NAME=$DIRECTORY/$F
	if [ -f $FILEPATH_AND_NAME ]; then
		printf "$F is a file and its size is %s"
		du -h $FILEPATH_AND_NAME | awk '{print $1}'
		COUNT=$[ $COUNT + 1 ]
		if [ "$COUNT" == 5 ]; then
			break
		fi
	fi
done

echo "********************"

FILES=$(ls -lt $DIRECTORY)
COUNT=0
for F in $FILES; do
	FILEPATH_AND_NAME=$DIRECTORY/$F
	if [ -f $FILEPATH_AND_NAME ]; then
		printf "$F is a file " 
		stat -c %y "$FILEPATH_AND_NAME" | awk '{printf $1 $2 "\n"}'
		COUNT=$[ $COUNT + 1 ]
		if [ "$COUNT" == 5 ]; then
			break
		fi
	fi
done

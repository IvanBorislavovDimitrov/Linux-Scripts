#!/bin/bash

# This is a nested while loop example

stars=1
maxCount=$(("$1"+1))

while [ "$stars" -lt "$maxCount" ]; do
	currentStars=0
	while [ "$currentStars" -lt "$stars" ]; do
		printf "* "
		currentStars=$(($currentStars+1))
	done
	stars=$((stars+1))
	echo
done
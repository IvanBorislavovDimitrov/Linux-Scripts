#!/bin/bash
year=$1
regex="^[0-9]+$"
if ! [[ $year =~ $re ]]; then
	echo 'Not a number';
	exit 1;
fi
if (( (year % 400) == 0 )) || (( (year % 4) == 0 && (year % 100) != 0 )); 
	then echo "Year is leap"
else
	echo "Year is not leap"
fi
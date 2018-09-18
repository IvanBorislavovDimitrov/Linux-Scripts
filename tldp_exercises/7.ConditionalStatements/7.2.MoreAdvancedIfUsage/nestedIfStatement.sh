#!/bin/bash
#This program checks if current year is leap
year=`date +%Y` # This line gets current year

if [ $[ "$year" % 400 ] -eq 0 ]; 
	then echo "This year is leap"
elif [ $[$year % 4 ] -eq 0 ]; 
	then
		if [ $[$year % 100] -ne 0 ];
			then echo "This year is leap"
		else 
			echo "This year isn't leap"
		fi
else 
	echo "This year isn't leap"
fi
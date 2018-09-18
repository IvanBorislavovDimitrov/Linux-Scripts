#!/bin/bash

year=`date +%Y`

if (( ("$year" % 400) == "0" )) || (( ("$year" % 4) == "0" && ("$year" % 100) != "0" )); 
	then echo "This is a leap year"
else 
	echo "This is not leap year"
fi
#!/bin/bash

# This program asks the user for his age and if he is old enough
# he will be able to drink otherwise he won't

echo "Hello $USER, please enter your age: "
read age

if [ "$age" -lt 16 ]; then
	echo "You aren't old enough to drink. You can drink legal at 16."
else
	echo "You can drink. Tell me what would you like to drink."
fi

if [ "$age" -gt 18 ]; then
	diffAge="$(($age-18))"
	beerDrunk="$(($diffAge*100))"
	echo "You've drunk $beerDrunk litres beer for the past $diffAge years"
fi

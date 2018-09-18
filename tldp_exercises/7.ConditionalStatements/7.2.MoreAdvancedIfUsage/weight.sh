#!/bin/bash

#This script calclulates your weight balance

weight="$1"
height="$2"

idealWeight=$[height - 110]

if [ "$idealWeight" -le "$weight" ]; 
	then echo "You must eat less"
else 
	echo "You must eat more"
fi

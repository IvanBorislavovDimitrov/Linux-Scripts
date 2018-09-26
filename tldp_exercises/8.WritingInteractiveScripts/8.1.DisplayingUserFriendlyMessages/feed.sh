#!/bin/bash

# Let's feed Tux

printf "Enter a number 1-3\n"
read number

echo "Tux will eat now"

export drink="Beer"
export eat="French fries"

case "$number" in

	"1")
		echo "Tux is eating $eat and drinking $drink"
		echo "Tux is now fed"
		;;
	"2")
		echo "Tux will not eat right now"
		;;
	"3")
		echo "Tux isn't here"
		;;
esac

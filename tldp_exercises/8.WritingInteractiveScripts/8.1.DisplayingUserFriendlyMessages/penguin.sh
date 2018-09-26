#!/bin/bash

# This script lets you present different menus to Tux. He will be happy when given a fish. 
# For more fun we added more animals

menu="fish"
animal="penguin"

if [ "$menu" == "fish" ]; then
	if [ "$animal" == "penguin" ]; then
		echo "Fish for Tux"
		exit 3
	else 
		echo "Where is Tux"
		exit 4
	fi
else 
	if [ "$animal" == "penguin" ]; then
		echo "Tux doesn't like this food"
		exit 1
	else 
		echo "Tux isn't here, but he won't like this food"
		exit 2
	fi
fi
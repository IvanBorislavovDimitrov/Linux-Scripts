#!/bin/bash

# This script adds you to my friendlist.

echo "Enter your name"
read name
echo "Enter your age"
read age

friends="/home/ivan/scripts/Linux-Scripts/tldp_exercises/8.WritingInteractiveScripts/8.2.CatchingUserInput/database.txt"

grep -i "$name" "$friends"

if [ $? == 0 ]; then
	echo "You are already registered in our database"
else
	echo "Welcome to my friends list"
	echo "$name $age" >> database.txt
fi
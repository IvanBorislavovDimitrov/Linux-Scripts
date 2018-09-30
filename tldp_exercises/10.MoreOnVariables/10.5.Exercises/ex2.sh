#!/bin/bash

declare -a URLS
INDEX=9
CURRENT_URL=""

while true; do
	echo "Enter URL for url"
	echo "Enter b for back"
	echo "Enter q for quit"
	read CHOICE
	case $CHOICE in
		"URL")
			echo "Enter url":
			read URL
			if [[ "$INDEX" -gt 0 ]]; then
				URLS[$INDEX]="$URL"
				INDEX=$[ "$INDEX" - 1 ]
			else
				echo "SPIRAI WE KAVAL"
				for (( i=9; i >= 1; i-- )); do
					URLS[$i]="${URLS[$i-1]}"
				done
				URLS[$INDEX]="$URL"
			fi
			CURRENT_URL=$URL
			;;
		"b")
			CURRENT_INDEX=$[$INDEX + 2]
			if [[ "$CURRENT_INDEX" -gt 9 ]]; then
				echo "You can't go back"
			else	
				CURRENT_URL="${URLS[$CURRENT_INDEX]}"
				INDEX=$[ "$INDEX" + 1 ]
			fi
			;;
		"q")
			break
			;;
		esac
	echo "Current URL: $CURRENT_URL"
	echo
done

echo "Thank you for using our app"
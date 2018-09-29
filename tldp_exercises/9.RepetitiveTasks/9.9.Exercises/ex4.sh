#!/bin/bash

COUNT=0

while true; do
	echo "On which topic do you want an advice?"
	echo "1. politics"
	echo "2. startrek"
	echo "3. kernelnewbies"
	echo "4. sports"
	echo "5. bofh-excuses"
	echo "6. magic"
	echo "7. love"
	echo "8. literature"
	echo "9. drugs"
	echo "10.education"
	echo
	
	echo -n "Enter your choice: "; read CHOICE;
	echo 
	case $CHOICE in
		"1") 
			echo "Politics"
		;;
		"2")
			echo "Startrek"
		;;
		"3")
			echo "Kernelnewbies"
		;;
		"4")
			echo "Sports are good"
		;;
		"5")
			echo "Bofh-excuses"
		;;
		"6")
			echo "Rado the magician"
		;;
		"7")
			echo "Love isn't in the air"
		;;
		"8") 
			echo "Literature sucks"
		;;
		"9")
			echo "Drugs for everyone"
		;;
		"10")
			echo "Education is not always good for you"
		;;
		"0")
		echo "Bye, bye"
		break
		;;
		*)
		echo "Enter a vaild number between 0 and 10"
	esac
	COUNT=$[ $COUNT + 1 ]
	if [ "$COUNT" == 3 ]; then
		echo "You've made 3 choices, that's enough"
		break
	fi
done


















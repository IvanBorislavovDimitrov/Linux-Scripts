#!/bin/bash

FORTUNE="/home/ivan/scripts/Linux-Scripts/tldp_exercises/9.RepetitiveTasks/9.5.BreakAndContinue/games"

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
		$FORTUNE politics
		;;
		"2")
		$FORTUNE startrek
		;;
		"3")
		$FORTUNE kernelnewbies
		;;
		"4")
		$FORUNE sports
		;;
		"5")
		$FORTUNE bofh-excuses
		;;
		"6")
		$FORTUNE magic
		;;
		"7")
		$FORTUNE love
		;;
		"8") 
		$FORTUNE literature
		;;
		"9")
		$FORTUNE drugs
		;;
		"10")
		$FORTUNE education
		;;
		"0")
		echo "Bye, bye"
		break
		;;
		*)
		echo "Enter a vaild number between 0 and 10"
	esac
done


















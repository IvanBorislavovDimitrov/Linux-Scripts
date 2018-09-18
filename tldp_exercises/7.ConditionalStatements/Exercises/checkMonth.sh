#!/bin/bash

month=`date +%m`

case $month in
	01)
		days=31
		monthName="January"
		;;
	02)
		days=28
		monthName="February"
		;;
	03)
		days=31
		monthName="March"
		;;
	04)
		days=30
		monthName="April"
		;;
	05)
		days=31
		monthName="May"
		;;
	06)
		days=30
		monthName="June"
		;;
	07)
		days=31
		monthName="July"
		;;
	08)
		days=31
		monthName="August"
		;;
	09)
		days=30
		monthName="September"
		;;
	10)
		days=31
		monthName="October"
		;;
	11)
		days=30
		monthName="November"
		;;
	12)
		days=31
		monthName="December"
		;;
esac

year=`date +%Y`

leapYear=0
if [ "$month" -eq '02' ]; then 
	if [ $[$year % 400] -eq "0" ];
		then 
			days=29;
			leapYear=1;
	elif [ $[$year % 4] -eq 0 ];
		then 
			if [ $[$year % 100] -eq 0 ]; then
				days=28
			else
				days=29; 
				leapYear=1;
		fi
	else 
		days=28
	fi
fi

echo "Current month is: $monthName"
echo "Current month days: $days"
echo "Current year is: $year"
if (( $((10#$month)) == 2 )) && (( "$leapYear" == 1 )); 
	then echo "February is longer because of leap year"
fi

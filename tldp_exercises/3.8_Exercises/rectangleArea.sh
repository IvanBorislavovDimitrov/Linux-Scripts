#!/bin/bash
printf "Enter width of the rectangle: "
read X
printf "Enter height of the rectangle: "
read Y
RES=$(($X*$Y))
printf "The area of the rectangle is: %d\n" "$RES"
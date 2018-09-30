#!/bin/bash

me=`basename "$0"`

FIRST_ARGUMENT="$1"
THIRD_ARGUMENT="$3"
TENTH_ARGUMENT="${10}"

echo "First argument - $FIRST_ARGUMENT"
echo "Third argument - $THIRD_ARGUMENT"
echo "Tenth argument - $TENTH_ARGUMENT"

echo "Total number of agruments passed to the script - ${#@}"

if [[ "${#@}" -gt 3 ]]; then
	shift 3
	echo "Parameters are shifted 3 positions left"
fi

echo "All remainign parameters: "
for P in "${@}"; do
	printf "$P "
done

echo 

echo "Number of arguments: ${#@}"

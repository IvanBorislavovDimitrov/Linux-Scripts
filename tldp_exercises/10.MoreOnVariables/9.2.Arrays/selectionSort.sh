#!/bin/bash

# Example of selection sort - my implementation

array=(4 5 3 2 1)

for (( i=0 ; i < "${#array[@]}"; i++)); do
	for (( j=i+1 ; j < "${#array[@]}"; j++)); do
		if [[ "${array[i]}" -gt "${array[j]}" ]]; then
			temp=${array[i]}
			array[i]="${array[j]}"
			array[j]="$temp"
			fi
	done
done

for I in ${array[*]}; do
	printf "$I "
done

echo
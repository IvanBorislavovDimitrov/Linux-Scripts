#!/bin/bash

arr=(4 5 3 2 1)

isSwapped=1
while [ "$isSwapped" == 1 ]; do
	isSwapped=0
	for (( i=0; i < "${#arr[@]}"-1 ; i++ )); do
		if [[ "${arr[i]}" -gt "${arr[i+1]}" ]]; then
			temp="${arr[i]}"
			arr[i]="${arr[i+1]}"
			arr[i+1]="$temp"
			isSwapped=1
		fi
	done	
done

for (( i=0; i < "${#arr[@]}"; i++ )); do
	printf "${arr[i]} "
done

echo
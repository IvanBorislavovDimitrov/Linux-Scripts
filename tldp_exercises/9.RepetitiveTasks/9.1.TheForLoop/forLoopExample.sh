#!/bin/bash
LIST="$(ls *.html)"
for file in "$LIST"; do
	echo "$file"
done
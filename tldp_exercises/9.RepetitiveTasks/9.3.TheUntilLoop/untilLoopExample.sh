#!/bin/bash

NUM=1

until [ "$NUM" < 10 ]; do
	echo "$NUM"
	
	NUM=$[$NUM + 1]
done

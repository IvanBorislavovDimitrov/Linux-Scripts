#!/bin/bash

LIST=$(ls /home/ivan/scripts/Linux-Scripts/tldp_exercises/9.RepetitiveTasks/9.6.MakingMenus)

select L in $LIST; do
	echo "You picked $L"
	break
done
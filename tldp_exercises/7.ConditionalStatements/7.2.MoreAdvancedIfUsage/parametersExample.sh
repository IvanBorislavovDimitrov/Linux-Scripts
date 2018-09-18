#!/bin/bash
if [[ "$1" == 'cat' ]];
	then echo "Animal is cat"
elif [[ "$1" == 'dog' ]]
	then echo "Animal is dog"
else 
	echo "Unrecognized animal"
fi
	
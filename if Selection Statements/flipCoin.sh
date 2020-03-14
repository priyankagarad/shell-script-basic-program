#!/bin/bash -x 
value=$(($RANDOM%2))
echo $value
if [ $value == 1 ];
then
	echo "head"
else
	echo "tail"
fi

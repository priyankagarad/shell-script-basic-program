#!/bin/bash -x
first=1
last=100
echo "ask the user to think of a number between 1 to 100:"
while [ $first -le $last ]
do
	mid=$(( ($first+$last)/2 ))
	read -p "if your number is less than $mid press 'y', if greter than $mid press 'n',otherwise press 'f':" number
	if [ $number == "f" ]
	then
		echo "Your number is $mid"
		break
	elif [ $number == "y" ]
	then
		last=$(( $mid-1 ))
	elif [ $number == "n" ]
	then
		first=$(( mid+1 ))
	fi
	mid=$(( (first+last)/2 ))
done


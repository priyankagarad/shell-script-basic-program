#!/bin/bash -x
head=0
tail=0
count=0
while true
do
	number=$((RANDOM%2))
	if [ $number -eq 1 ]
	then
		(( head++ ))
	else
		(( tail++ ))
	fi
if [ $head -eq 11 ]
then
	echo "head win"
	break
elif [ $tail -eq 11 ]
then
	echo "tail win"
	break
fi
(( count++ ))
done





#!/bin/bash -x
read -p "enter a number:" number
count=0
for (( i=1;i<=$number;i++ ))
do
	if [ $(($number%$i)) -eq 0 ]
	then
		(( count++ ))
	fi
done
if [ $count -eq 2 ]
then
	echo "number is prime"
else
	echo "number is not prime"
fi
	

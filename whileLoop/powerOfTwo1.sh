#!/bin/bash -x 
read -p "enter a number:" number
count=1
result=1
while [ $count -le $number ]
do
	result=$(( result*2 ))
	echo $result
	(( count++ ))
done

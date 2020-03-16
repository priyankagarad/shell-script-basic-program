#!/bin/bash -x
read -p "enter a number:" number
fact1=1
for (( i=1;i<=number;i++ ))
do
	fact1=$(( fact1*i ))
done
echo "factorial of number" $fact1

#!/bin/bash 
function primeFactorzation()
{
	val=0
	for (( i=2;$number!=1;i++ ))
	do
		count=0
		if [ $(($number%$i)) -eq 0 ]
		then
			array[((val++))]=$i
			number=$(($number/$i))
			count=1
		fi
		if [ $count -eq 1 ]
		then
			((i--))
		fi
	done
}
read -p "enter a number:" number
primeFactorzation $number 
echo "${array[@]}"

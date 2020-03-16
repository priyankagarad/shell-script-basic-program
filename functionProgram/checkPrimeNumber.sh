#!/bin/bash -x
function checkNumberIsPrime(){	
	count=0;
	for (( i=1; i<=$1; i++ ))
	do
		if [ $(($1%$i)) -eq 0 ]
		then
			((count++))
		fi
	done
	if [ $count -eq 2 ]
	then
		echo $1 
	else
		echo "not prime"
	fi
}

function checkPalimdrom()
{
	n=$1
	reverse=0
	while [ $n -gt 0 ]
	do
		reminder=$(( $n%10 ))
		reverse=$(($reverse*10+$reminder))
		n=$(( n/10 ))

	done
	if [ $1 -eq $reverse ]
	then
		echo $reverse
	else
		echo "Not palindrome "
	fi
}

read -p "enter a number : " number

prime="$( checkNumberIsPrime $number )"
palindrome="$( checkPalimdrom $prime )"
result="$( checkNumberIsPrime $palindrome )"
if [ $prime -eq $result ]
then
	echo "number is palindrome and prime also"
else
	echo "not palindrome and prime"
fi 


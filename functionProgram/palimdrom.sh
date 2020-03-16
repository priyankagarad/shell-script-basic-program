#!/bin/bash -x 
function checkPalindrome()
{
	number=$1
	reverse=0
	while [[ $number > 0 ]]
	do
		reminder=$(($number%10))
		reverse=$(($reverse*10+$reminder))
		number=$(($number/10))
	done
if [ $1 -eq $reverse ]
then
	echo "$reverse"
else
	echo "number is not palimdrom"
fi
}

read -p " enter a first number:" number1
read -p "enter a second number:" number2
result1=$( checkPalindrome $number1 )
result2=$( checkPalindrome $number2 )
if [ $result1 -eq $result2 ]
then
	echo "both number are same and palindrome:"
else
	echo "both number are not same but palindromr:"
fi


#!/bin/bash -x 
read -p "enter a number:" number
result=1
for(( i=1; i<=number ; i++ ))
do
	result=`echo "$result+(1/$i)" | bc -l`;
done
echo $result

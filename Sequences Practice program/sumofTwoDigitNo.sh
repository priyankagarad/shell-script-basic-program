#!/bin/bash -x
low=10
high=99
sum=0
count=5
for (( i=1;i<=5;i++ )) 
do
	val=$((low+RANDOM %(1+high-low)))
	echo $val
	$count
	sum=$(($sum+$val))
	avg=$(($sum/$count))

done
echo "sum of random  number" $sum
echo "average of random number" $avg

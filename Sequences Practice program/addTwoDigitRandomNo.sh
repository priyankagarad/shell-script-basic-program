#!/bin/bash
low=10
high=99
sum=0
for (( i=1;i<=5;i++ ))
do
	val=$((low+RANDOM %(1+high-low)))
	echo $val
	sum+=$val
done
$sum

#!/bin/bash -x
read -p "enter a base value:" base
read -p "enter a power:" power
result=1
for(( i=1;i<=power;i++ ))
do
	result=$((result*2))
	echo $result
done

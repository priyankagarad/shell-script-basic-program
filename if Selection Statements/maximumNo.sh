#!/bin/bash -x
n1=$(($RANDOM % 1000))
echo $n1

n2=$(($RANDOM % 1000))
echo $n2

n3=$(($RANDOM % 1000))
echo $n3

n4=$(($RANDOM % 1000))
echo  $n4

n5=$(($RANDOM % 1000))
echo  $n5

if [ $n1 -ge $n2 -a $n1 -ge $n3 -a $n1 -ge $n4 -a $n1 -ge $n5 ];
then
	 echo $n1

elif [ $n2 -ge $n1 -a $n2 -ge $n3 -a $n2 -ge $n4 -a $n2 -ge $n5 ];
then
 	echo $n2

elif [ $n3 -ge $n1 -a $n3 -ge $n2 -a $n3 -ge $n4 -a $n3 -ge $n5 ];
then
 	echo $n3

elif [ $n4 -ge $n1 -a $n4 -ge $n2 -a $n4 -ge $n4 -a $n3 -ge $n5 ];
then
 	echo $n4
else
 	echo $n5
fi



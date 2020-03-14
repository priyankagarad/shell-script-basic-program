
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

if [ $n1 -lt $n2 -a $n1 -lt $n3 -a $n1 -lt $n4 -a $n1 -lt $n5 ];
then
         echo $n1

elif [ $n2 -lt $n1 -a $n2 -lt $n3 -a $n2 -lt $n4 -a $n2 -lt $n5 ];
then
        echo $n2

elif [ $n3 -lt $n1 -a $n3 -lt $n2 -a $n3 -lt $n4 -a $n3 -lt $n5 ];
then
        echo $n3

elif [ $n4 -le $n1 -a $n4 -lt $n2 -a $n4 -lt $n4 -a $n3 -lt $n5 ];
then
        echo $n4
else
        echo  $n5
fi





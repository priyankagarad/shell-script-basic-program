#!/bin/bash -x
read -p "enter the a number:" num
if [ $num -eq 1 ] || [ $num -le 9 ]
then 
	echo "unit"
elif [ $num -eq 10 ] || [ $num -le 99 ]
then 
	echo "ten"
elif [ $num -eq 100 ] || [ $num -le 999 ]
then 
        echo "hundred"

elif [ $num -eq 1000 ] || [ $num -le 9999 ]
then 
        echo "thousand"
else
	echo "number not in range"
fi

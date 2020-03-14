#!/bin/bash -x 

read -p "enter first  number :" number1
read -p "enter second number :" number2
read -p "enter third number  :" number3

result1=`echo "$number1+$number2*$number3" | bc` ;
echo $result1
result2=`echo "$number1+$number2/$number3" | bc`;
echo $result2
result3=`echo "$number1%$number2+$number3" | bc`;
echo $result3
result4=`echo "$number1*$number2+$number3" | bc`;
echo $result4

#maximum  value
if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] && [ $result1 -gt $result4 ]; 
then
        echo $result1
elif [ $result2 -gt $result1 ] && [ $result2 -gt $result3 ] && [ $result2 -gt $result4 ]; 
then
       echo $result2
elif [ $result3 -gt $result1 ] && [ $result3 -gt $result2 ] && [ $result3 -gt $result4 ]; 
then
       echo $result3
else
        echo $result4
fi

#minimum value
if [ $result1 -lt $result2 ] && [ $result1 -lt $result3 ] && [ $result1 -lt $result4 ]; 
then
        echo $result1
elif [ $result2 -lt $result1 ] && [ $result2 -lt $result3 ] && [ $result2 -lt $result4 ]; 
then
       echo $result2
elif [ $result3 -lt $result1 ] && [ $result3 -lt $result2 ] && [ $result3 -lt $result4 ]; 
then
       echo $result3
else
        echo $result4
fi


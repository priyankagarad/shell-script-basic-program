#!/bin/bash
#diclare dictionary ,find the key,value and maximum occurance count and store result in dictionary
declare -A Dictionary
dice=1
while [[ Dictionary[$dice] -ne 10 ]]
do
   dice=$((RANDOM%6+1))
   Dictionary[$dice]=$((${Dictionary[$dice]}+1))
   maximum=$dice
done
echo "key of Dictionary:${!Dictionary[@]}"
echo "value of Dictionary:${Dictionary[@]}"
echo "maximum $maximum"

#minimum value

minimum=${Dictionary[1]}
for (( i=1;i<=6;i++ ))
do
   if [[ ${Dictionary[$i]} -lt $minimum ]]
   then
      minimum=${Dictionary[$i]}
      key=$i
   fi
done
echo " minimum occurance count in dictionary:$key"




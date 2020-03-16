#!/bin/bash -x 
function secondLargest()
{
	temp=0
	for (( i=0;i<$size;i++ ))
	do
		for (( j=i+1;j<$size;j++ ))
		do
			if [ ${array[i]} -gt ${array[j]} ]
			then
				temp=${array[i]} 
				array[$i]=${array[j]}
				array[$j]=$temp
			fi
		done
	done
}
read -p "enter size of array:" size
for (( i=0;i<$size;i++ ))
do
	read -p "enter array element:" element
	array[i]=$element
done

#call method secondLargest Element
secondLargest
echo "${array[@]}"
echo "${array[$size-2]}"
echo "${array[1]}"

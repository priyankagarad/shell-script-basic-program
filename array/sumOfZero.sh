#!/bin/bash -x 
function sumOfArrayElementZero()
{
	count=0
	for (( i=0;i<=$size;i++ ))
	do
		for (( j=$i+1;j<=$size;j++ ))
		do
			for (( k=$j+1;k<=$size;k++ ))
			do
				result=$(( ${array[$i]}+${array[$j]}+${array[$k]} ))
				if [[ $result -eq 0 ]]
				then
					newArray[count++]=${array[$i]}
					newArray[count++]=${array[$j]}
					newArray[count++]=${array[$k]}
				fi

			done

		done

	done
}
read -p "enter array size :" size
for (( i=0;i<=size;i++ ))
do
	read -p "enter array element:" element
	array[i]=$element
done
sumOfArrayElementZero "${array[@]}"
echo "${newArray[@]}"

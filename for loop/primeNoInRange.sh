#!/bin/bash -x 
read -p "enter a start number:" start
read -p "enter a end number:" end
count=0
for (( i=$start;i<=$end;i++ ))
do
	for (( j=2;j<=i;j++ ))
	do
		if [ $((i%j)) -eq 0 ];
		then
			break
		else
			(( count=1 ))
		fi
	done

	if [ $count -eq 1 ];
	then
		echo $i
		count=0
	fi
done

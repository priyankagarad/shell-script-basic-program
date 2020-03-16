#!/bin/bash -x
read -p "enter stake amount:" stake
read -p "enter goal amount:" goal
count=0
i=0
while [ true ]
do
	bet=$((RANDOM%2));
	if [ $bet -eq 0 ]
	then
		stake=$(($stake-1));
		((i++))
	else
		stake=$(($stake+$bet))
		((count++))
		((i++))
	fi
	if [ $stake -le 0 ]
	then
		echo "gambler lost"
		break;
	elif [ $goal -lt $stake ]
	then
		echo "gambler won"
		break;
	fi
done


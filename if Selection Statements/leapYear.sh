
#!/bin/bash -x
read -p "enter the year" year
if [ $year -ge 1000 ] || [ $year -le 9999 ];
then
	if [ $((year%4)) -eq 0 ];
	then 
 		if [ $((year%100)) -ne 0 ];
		then 
			if [ $(($year%400))==0 ];
			then 
				echo "leapyear"
			else
				echo "not leap year"
			fi
		else
			echo "leap year"
		fi
	else
		echo "not leap year"
	
	fi
fi


 










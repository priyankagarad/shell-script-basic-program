#!/bin/bash -x
read -p "enter your choice:" choice
echo $choice
case $choice in
	1)
		echo "Feet to Inch "
		read -p "enter feet value:" feet
		inch=$((feet*12))
		echo "$inch"
		;;
	2)
		echo "Feet to Meter:"
		read -p "enter feet value:" feet
		meter=`echo "$feet*0.3048" | bc`
		echo "$meter"
		;;
	3)
		echo "Inch to Feet:"
		read -p "enter inches value:" inch
		feet=$(($inch/12))
		echo "$feet"
		;;
	4)
		echo "Meter to Feet"
		read -p "enter meter value:" meter
		feet=`echo "$meter*3.2808" | bc`
		echo "$feet"
		;;
	*)
		echo "invalid choice"
esac

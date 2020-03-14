#!/bin/bash -x
read -p "enter a number:" num
echo $num
case "$num" in
0)
	echo "sunday" ;;
1)
	echo "monday" ;;
2)
	echo "tuesday" ;;
3)
	echo "wednesday" ;;
4)
	echo "thursday";;
5)
	echo "friday" ;;
6)
	echo "saturday" ;;
esac

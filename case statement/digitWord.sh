#!/bin/bash -x
result=$((RANDOM %10))
echo $result
case "$result" in
	0)
		echo "Zero" ;;
	1)
		echo "first" ;;
	2)
		echo "second" ;;
	3)
		echo "three" ;;
	4)
		echo "fourth" ;;
	5)
		echo "five" ;;
	6)
		echo "six" ;;
	7)
		echo "seven" ;;
	8)
		echo "eight" ;;
	9)
		echo "nine" ;;
esac

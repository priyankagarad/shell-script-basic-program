#!/bin/bash -x 
read -p "enter first  number :" a
read -p "enter second number :" b
read -p "enter third number :" c
echo "$a+$b*$c" | bc -l  
echo "$c+$a/$b" | bc -l 
echo "$a%$b+$c" | bc -l  
echo "$a*$b+$c" | bc -l 


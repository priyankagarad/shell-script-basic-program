#!/bin/bash -x
read -p  "enter the inch value:" inch
 $inch
result=`echo "($inch/12)" | bc -l`;
 $result



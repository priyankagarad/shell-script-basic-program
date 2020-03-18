#!/bin/bash
function monthGenerateDictionary()
{
        #declare a dictionary and  initialize count
        declare -A monthGenerateDictionary
        count=0

        #check the year condition
        if [[ $year==1992 || $year==1993 ]]
        then
                while [[ $count -lt 50 ]]
                do
                        month=$(((RANDOM%12)+1))
                        monthGenerateDictionary[$month]=$((${monthGenerateDictionary[$month]}+1))
                        ((count++))
                done
                echo "key:${!monthGenerateDictionary[@]}"
                echo "values:${monthGenerateDictionary[@]}"
        else
                echo "not valid year"
        fi
}

read -p "eneter year:"year

#method call
monthGenerateDictionary $year

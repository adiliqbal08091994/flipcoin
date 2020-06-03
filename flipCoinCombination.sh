#!/bin/bash
flip()
{
    if [[ $((RANDOM%2)) == 0 ]]
    then
        echo "h"
    else
        echo "t"
    fi
}
percent() 
{
    array=($@)
    sum=0
    for i in ${array[@]}
    do
        sum=$(($sum+$i))
    done
    declare -a per
    for ((i=0;i<${#array[@]};i++))
    do
        per[i]=$(echo "scale=2;${array[$i]}*100/$sum" | bc)
    done
    echo ${per[@]}
   

}

max ()
{
    status=$(echo "$1 > $2" | bc)
    if [[ $status -ne 0 ]]
    then 
        echo $1
    else
        echo $2
    fi
}

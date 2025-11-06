#!/bin/bash

nsl=0
sl=0
for var in $(ls $1)
do
    for age in $(cat $1$var)
    do
        age=$(echo $age | cut -d ":" -f2)
        if [[ $age -ge 18 ]]
        then
        sl=$((sl+1))
        else
        nsl=$((nsl+1))
        fi
    done
done
echo -e "Несовершеннолетних: $nsl, Совершеннолетних: $sl"

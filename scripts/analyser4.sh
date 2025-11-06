#!/bin/bash

young=256
old=0

for var in $(ls $1)
do
    for info in $(cat $1$var)
    do
        name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        if [[ $young -gt $age ]]
        then young=$age; namey=$name; emaily=$email
        fi
        if [[ $old -lt $age ]]
        then old=$age; nameo=$name; emailo=$email
        fi
    done
done
echo -e "Самый молодой $namey в возрасте $young с почтой $emaily"
echo -e "Самый пожилой $nameo в возрасте $old с почтой $emailo"

#!/bin/bash
for var in $@ ; do
    array1[${#array1[*]}]=$var
done

for(( i=1;i<${#array1[*]};i++)) do
    array2[$i]=${array1[i]}
done

MAX=${array2[1]}
for I in ${!array2[@]};do
    if [[ ${MAX} -le ${array2[${I}]} ]];then
        MAX=${array2[${I}]}
    fi
done
if [ "${MAX}" -gt "${array1[0]}" ]
then
    echo 0
else
    echo 1
fi

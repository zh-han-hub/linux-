#!/bin/bash
for var in $@ ; do
	array1[${#array1[*]}]=$var
done
a=1
if [ ${#array1[*]} -eq $a ];then
	echo 0
else
	for(( i=0;i<${#array1[*]};i++)) do
		if [ "${array1[i]}" -gt 0 ] 2>/dev/null ;then
		s=`expr $s + 1`;
		fi
	done
	b=`expr ${#array1[*]}`;
	if [ $s -eq $b ];then
		for(( i=1;i<${#array1[*]};i++)) do
		array2[$i]=${array1[i]}
		done
		MAX=${array2[1]}
		for I in ${!array2[@]};do
			if [[ ${MAX} -le ${array2[${I}]} ]];then
				MAX=${array2[${I}]}
			fi
		done
		if [ "${MAX}" -gt "${array1[0]}" ];then
			echo 0
		else
			echo 1
		fi
	else
		echo 0
	fi
fi

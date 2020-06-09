#!/bin/bash
read a
read b
for i in `seq 1 $a`
do
array[$i]=$i
done
echo "${array[@]}" | grep -wq "$b" &&  echo "1" || echo "0"

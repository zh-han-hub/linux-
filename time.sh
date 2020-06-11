#!/bin/bash
currTime=$(date +" %T")
for time in $@ ; do
t1=`date -d "$time" +%s`
t2=`date -d "$currTime" +%s`
if [ $t1 -gt $t2 ]; then
    echo 1
elif [ $t1 -eq $t2 ]; then
    echo 0
else
    echo 0
fi
done

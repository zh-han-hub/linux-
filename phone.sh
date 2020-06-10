#!/bin/bash
array=(133,149,153,173,177,180,181,189)
array1=(199,130,131,132,145,155,156,166,171,175,176,185,186,166)
array2=(135,136,137,138,139,147,150,151,152,157,158,159172,178,182,183,184,187,188,198)
for a in $@;do
    if [ $a -gt 0 ] 2>/dev/null ;then 
        if [ ${#a} -eq 11 ];then
            b=${a:0:3};
            if echo "${array[@]}" | grep -w "$b" &>/dev/null; then
                echo 1
            elif echo "${array1[@]}" | grep -w "$b" &>/dev/null; then
                echo 1
            elif echo "${array2[@]}" | grep -w "$b" &>/dev/null; then
                echo 1
            else
                echo 0
            fi
        else
            echo 0
        fi
    else
        echo 0
    fi
done

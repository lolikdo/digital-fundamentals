#!/bin/bash
min=100
max=-1
for var in $(ls $1)
do
	echo -e "$1$var:"
	for file_info in $(cat $1$var)
	do
		age=$(echo $file_info | cut -d ":" -f2)
		if [[ $age -lt $min ]]
        	then
			min=$age
		elif [[ $age -gt $max ]]
		then
			max=$age
		fi
	done
done
echo $min
echo $max


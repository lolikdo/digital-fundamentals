#!/bin/bash

for var in $(ls $1)
do
	soversh=0
	nesoversh=0
	echo -e "$1$var:"
	for file_info in $(cat $1$var)
	do
		age=$(echo $file_info | cut -d ":" -f2)
		if [[ $age -ge 18 ]]
        	then
           		soversh=$(($soversh+1))
		else 
			nesoversh=$(($nesoversh+1))
		fi
	done
done
echo -e "Совершеннолетних: $soversh"
echo -e "Несовершеннолетних: $nesoversh"

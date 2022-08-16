#!/bin/bash -x
#take a range from 0-100 ,find the digits that are repeated twice like 33,77etc and store them in the array
array=();
for i in `seq 1 100`
do
	if [ $((i%11)) -eq 0 ]
	then
		array+=($i);
	fi
done
echo ${array[@]}

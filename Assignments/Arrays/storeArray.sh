#!/bin/bash -x
array=()
for (( i=0; i<3; i++))
do
	a=$(( ( RANDOM % 699 ) + 100));
	array[((i))]+=$a
done
echo ${array[@]}

max=${array[0]};
min=${array[0]};
sec_max='unset';
sec_min='unset';
for i in "${array[@]}"
do
	if [ $i -gt $max ]
	then
		sec_max=$max;
		max=$i;
	fi
	if [ $i -le $min ]
	then
		sec_min=$min;
		min=$i;
	fi
done
echo " second max=$sec_max and second min=$sec_min "


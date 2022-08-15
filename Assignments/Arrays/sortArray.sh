#!/bin/bash -x
array=()
for((i=0;i<5;i++))
do
	a=$(( (RANDOM % 699) + 100 ));
	array[((i))]+=$a;
done
echo ${array[@]}
arrays=(`echo ${array[@]} | tr " " "\n" | sort`)
echo ${arrays[@]}
echo "sec_max is ${arrays[-2]} and sec_min is ${arrays[1]}";

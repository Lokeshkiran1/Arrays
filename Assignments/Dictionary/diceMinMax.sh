#!/bin/bash

declare -A results
for num in `seq 1 6`
do
results[$num]=0
done
max=0
while [ 0 ]
do
randomNo=$((1+$RANDOM%6))
((results[$randomNo]++))
if [[ ${results[$randomNo]} -eq 10 ]]
then
max=$randomNo
break
fi
done
echo "Number to reach maximum times: $max"
min=1
minOcc=10
for i in `echo ${!results[@]}`
do
if [ ${results[$i]} -lt $minOcc ]
then
minOcc=${results[$i]}
min=$i
fi
done
echo "Number to reach minimum times: $min"

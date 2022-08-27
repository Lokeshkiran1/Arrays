#!/bin/bash -x
cash=100
goal=200
bet=1
betcount=0
win=0
while [ $cash -lt $goal ] && [ $cash -gt $bet ]
do
   randomNumber=$((RANDOM%2))
   if [ $randomNumber -eq 1 ]
   then
        cash=$(($cash+($bet*2)))
        ((win++))
   else
        cash=$(($cash-($bet*2)))
   fi
   ((betcount++))
done
if [ $cash -ge $goal ]
then
     echo "Gambler won"
else
     echo "Gambler loose"
fi
echo "no of times bet=$betcount"
echo "no of times win=$win"

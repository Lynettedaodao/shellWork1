#!/bin/bash
a=(1 2 3 4 5)
b=(3 4 5 6 7)
c=(4 5 6 7 8)
declare -a d1
declare -a d2
t=0
r=0
sum=0
for i in ${a[@]}
do
   for j in ${b[@]}
   do
      if [ $i -eq $j ]
      then
         d1[t]=$i
         t=$((t+1))
      fi
   done
done
for m in ${d1[@]}
do
   for n in ${c[@]}
   do
      if [ $m -eq $n ]
      then
         d2[r]=$m
         r=$((r+1))
      fi
   done
done
for k in ${d2[@]}
do
   sum=$((sum_k))
done
echo d2=${d2[@]}
echo $sum

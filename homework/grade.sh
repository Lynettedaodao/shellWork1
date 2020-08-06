#!/bin/bash
filename=$1
t=0
c=0
declare -a r
sum=0
ave=0
for line in $(cat $filename)
do
   #echo $line
   tmp=$((c%2))
   #echo $tmp
   if [ "$tmp" = "1" ]
   then
       #echo $line
       r[t]=$line
       t=$((t+1))
      # echo ${r[t]}
   fi
   c=$((c+1))
done
for i in ${r[@]}
do
     sum=$((sum+i))
done
len=${#r[@]}
ave=$((sum/len))
echo "the total score is ${sum}"
echo "the average score is ${ave}"

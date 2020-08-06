#!/bin/bash
array=(1 2 3 4 5 6 7 8 9)
for i in ${array[@]}
do
   for j in ${array[@]}
   do
      if [ $j -le $i ]
      then
         k=$(($i*$j))
         echo -n $i*$j=$k$'\t'
      fi  
   done
   echo ""
done

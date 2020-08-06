#!/bin/bash
for ((i=1;i<=9;i++))
do
   for((j=1;j<=i;j++))
   do
     k=$(($i*$j))
     echo -n "${i}*${j}=${k}	"
   done
   echo ""
done        

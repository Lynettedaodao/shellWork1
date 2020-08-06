#!/bin/bash
#set -x
if [ $# -ne 1 ]
then
   echo "pls input dir"
   exit 1
fi
if [ ! -d $1 ]
then
   echo "pls input dir"
   exit 1
fi
dst1=$1
dst2=$1/bak
mkdir -p $dst2
for i in $(ls $dst1)
do
   if [ -f $dst1/$i ]
   then
       d=$(date +%Y-%m-%d)
       name=boya_${i}_${d}
       cp $dst1/$i $dst2/$name
   fi
done

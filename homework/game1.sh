#!/bin/bash
echo "0:stone 1:sicssors 2:paper"
while true
do
   read -p"your choose is " a
   b=$[RANDOM%3]
   if [ $a -ge 0 ] && [ $a -le 2 ]
   then
        if [ $a = $b ]
        then
            echo "player:${a} computer:${b} tie"
        else
           if [ $a = 0 -a $b = 1 ] || [ $a = 1 -a $b = 2 ] || [ $a = 2 -a $b = 0 ]
           then
               echo "player:${a} computer:${b} you win"
           else
               echo "player:${a} computer:${b} you lose"
           fi
        fi
   else
        echo "please input correctly"
   fi
done

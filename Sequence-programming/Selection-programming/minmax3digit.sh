#!/bin/bash 

s=$(((RANDOM%999)+1))
  s1=$(((RANDOM%999)+1))
  s2=$(((RANDOM%999)+1))
  s3=$(((RANDOM%999)+1))
 s4=$(((RANDOM%999)+1))

l=$s
if [ $s1 -gt $l ]
then
l=$s1
fi
if [$s2 -gt $l ]
then
l=$s2
fi
if [$s3 -gt $l ]
then
l=$3
fi
echo max of $s $s1 $s2 $s3 $4 is $l
 

l1=$s
if [ $s1 -lt $l1 ]
then
l1=$s1
fi
if [$s2 -lt $l1 ]
then
l1=$s2
fi
if [$s3 -lt $l1 ]
then
l1=$3
fi
echo min of $s $s1 $s2 $s3 $s4 is $l1

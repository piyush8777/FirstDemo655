#!/bin/bash -x
 s=$(((RANDOM%99)+1))
  s1=$(((RANDOM%99)+1))
  s2=$(((RANDOM%99)+1))
  s3=$(((RANDOM%99)+1))
 s4=$(((RANDOM%99)+1))
sum=$(($s+$s1+$s2+$s3+$s4))
echo $sum
avg=$(($sum/5))
echo $avg

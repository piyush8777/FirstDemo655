#!/bin/bash

n=$(((RANDOM%9999)+1))

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

echo "Your number in expandedform $n "
for (( i=1; i<=$len; i++ ))
do
digit=$(echo $n | cut -c $i)
case $digit in
0) echo -n "thousand" ;;
1) echo -n "hundred" ;;
2) echo -n "ten" ;;
3) echo -n "one" ;;
4) echo -n "zero" ;;
esac
done

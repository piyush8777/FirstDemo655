#!/bin/bash

echo -e "enter year "
read year
if [ $year -le 0 ] ; then
year=`date | cut -d " " -f6`
fi
if [ `expr $year % 400` -eq 0 ]; then
echo "$year is a Leap year"
elif [ `expr $year % 100` -eq 0 ]; then
echo "$year is not a Leap year"
elif [ `expr $year % 4 ` -eq 0 ]; then
echo "$year is not a Leap year"
else
echo "$year is not a leap year"
fi


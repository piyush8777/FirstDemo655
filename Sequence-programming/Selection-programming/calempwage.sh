#!/bin/bash 


empCheck=$((RANDOM%2));
isPresent=1
empRatePerHr=20;
empHrs=8;

if [ $empCheck -eq $isPresent ]
then
salary=$(( $empHrs*$empRatePerHr ));
else 
salary=0;
fi
echo $salary

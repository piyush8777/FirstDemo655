#!/bin/bash 

powers_of_two(){
sum=0
for n                         
do

[[ $n =~ ^0*([0-9]+)$ ]] ||       
continue                   
n=${BASH_REMATCH[1]}              
(( n>0 && !(n&(n-1)) )) &&     # Is n positive and a power of 2.
printf '%d %d\n' "$n" "$((sum+=n))"            
done
}
powers_of_two -22 0 1 2 3 4 5 7 8 08 00008 9 31 32 33 -2 asd fhgh 2+2 3e3 inf

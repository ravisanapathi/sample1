#!/bin/bash -x

Parttime=1
Fulltime=2
empRateperhr=20
randomcheck=$((RANDOM%3))

if [ $Parttime -eq $randomcheck ]
then
        emphrs=4
elif [ $Fulltime -eq $randomcheck ]
then
      emphrs=8
else
      emphrs=0
fi

salary=$(($emphrs*$empRateperhr))

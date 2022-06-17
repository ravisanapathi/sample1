#!/bin/bash -x

Parttime=1
Fulltime=2
empRateperHr=20
totalSalary=0
noWorkingdays=20
maxRateinmonth=100

totalempHr=0
totalWorkingdays=0

function getworkinghours()
{
         case $randomcheck in
                  $Parttime )
                      empHrs=4
                   ;;
                  $Fulltime )
                      empHrs=8
                   ;;
                  * )
                       empHrs=0
                   ;;
         esac
}

while [[ $totalempHr -lt $maxRateinmonth && $totalWorkingdays -lt $noWorkingdays ]]
do
         ((totalWorkingdays++))
           randomcheck=$((RANDOM%3))
          getworkinghours $randomcheck
           totalempHr=$(($totalempHr+$empHrs))
done
totalSalary=$(($totalempHr*$empRateperHr))

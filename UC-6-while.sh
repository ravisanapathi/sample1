#!/bin/bash -x

Parttime=1
Fulltime=2
empRateperhr=20
totalSalary=0
noWorkingdays=20
maxRateInMonth=100

totalempHr=0
totalWorkingdays=0
while [[ $totalempHr -lt $maxRateInMonth && $totalWorkingdays -lt $noWorkingdays ]]

do
           ((totalWorkingdays++))
             randomcheck=$((RANDOM%3))
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
            totalempHr=$(($totalempHr+$empHrs))
done
totalSalary=$(($totalempHr*$empRateperhr))

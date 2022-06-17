#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrsInMonth=100
empRatePerHr=20
numOfWorkingdays=20

totalEmpHr=0
totalWorkingdays=0

function getWorkingHours()
{
        case $randomcheck in
                     $isFullTime)
                          empHrs=8
                       ;;
                     $isPartTime)
                           empHrs=4
                       ;;
                     *)
                           empHrs=0
        esac
}
function getEmpWage() {
               echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingdays -lt $numOfWorkingdays ]]
do
        ((totalWorkingdays++))
         randomcheck=$((RANDOM%3))
         getWorkingHours $randomcheck
         totalEmpHr=$(($totalEmpHr+$empHrs))
         dailyWages["$totalWorkingdays"]=$(($empHrs*$empRatePerHr))
done

totalSalary="$( getEmpWage $totalEmpHr )"
echo ${dailyWages[@]}

echo ${!dailyWages[@]}
echo ${#dailyWages[@]}

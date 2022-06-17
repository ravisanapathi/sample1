#!/bin/bash -x

Parttime=1
Fulltime=2
empRateperhr=20
totalsalary=0
noWorkingdays=20

for (( day=1; day<=$noWorkingdays; day++ ))
do
       randomcheck=$((RANDOM%3))
          case $randomcheck in
                     $Parttime)
                      emphrs=4
                  ;;
                  $Fulltime)
                       emphrs=8
                  ;;
                  *)
                         emphrs=0
                  ;;
  esac
        salary=$(($emphrs*$empRateperhr))
        totalsalary=$(($totalsalary+$salary))
done

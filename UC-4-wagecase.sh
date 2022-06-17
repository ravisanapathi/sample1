#!/bin/bash -x

Parttime=1
Fulltime=2
empRateperhr=20
empCheck=$((RANDOM%3))

case $empCheck in
          $Fulltime)
              emphrs=8
          $Parttime)
              emphrs=4
          *)
             emphrs=0
esac
salary=$(($emphrs*$empRateperhr))

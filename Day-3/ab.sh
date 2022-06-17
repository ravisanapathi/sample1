#!/bin/bash -x
for file in `*.txt`
do
foldername= `echo $file | awk -F . '{print $1}'`
mkdir $foldername
cp $file $foldername
done

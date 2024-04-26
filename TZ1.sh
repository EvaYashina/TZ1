#!/bin/bash
input_d=${1:-'in'}
output_d=${2:-'out'}
file_vhod=$(find $input_d -maxdepth 1 -type f)
echo $file_vhod
dir_vhod=$(find $input_d -maxdepth 1 -type d)
echo $dir_vhod
file_result=$(find $input_d -type f)
echo $file_result
for f in $file_result;
do 
cp $f $output_d;
done
echo $output_d
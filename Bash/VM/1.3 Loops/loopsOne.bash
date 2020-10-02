#!/bin/bash

echo "Mata in ett tal"
read tal1
echo "Mata in ett till tal :)"
read tal2
max=$( (( $tal1 >= $tal2 )) && echo "$tal1" || echo "$tal2" )
min=$( (( $tal1 <= $tal2 )) && echo "$tal1" || echo "$tal2" )
for ((i=min+1;i<max;i++));
do
    echo $i
done

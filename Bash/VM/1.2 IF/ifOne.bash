#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -tal) tal="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

if [[ $tal -gt 10 ]]
then
    echo "talet är större än 10"
elif [[ $tal -lt 10 ]]
then
    echo "talet är mindre än 10"
else
    echo "talet är $tal"
fi

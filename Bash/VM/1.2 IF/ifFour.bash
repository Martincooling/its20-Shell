#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -age) age="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

if [[ $age -lt 18 ]]
then
    echo "Du är ej myndig"
elif [[ $age -gt 17 && $age -lt 66 ]]
then
    echo "Du är myndig"
else
    echo "Du är pensionär"
fi

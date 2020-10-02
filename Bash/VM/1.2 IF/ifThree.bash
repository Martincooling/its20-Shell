#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -temp) temp="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

if [[ $temp -gt 377 && $temp -lt 396 ]]
then
   echo "Du har feber"
elif [[ $temp -gt 395 ]]
then
   echo "hämta doktorn"
else
   echo "Du har inte feber!"
fi

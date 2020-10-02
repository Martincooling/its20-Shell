#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -country) country="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

if [[ $country == "Sverige" || $country == "Norge" || $country == "Danmark" ]]
then
    echo "Du bor i skandinavien"
else
    echo "Du bor inte i skandinavien"
fi

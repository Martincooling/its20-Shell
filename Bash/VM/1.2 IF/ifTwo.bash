#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -antal) antal="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

if [[ $antal -lt 10 ]]
then
    echo "Beställ 30 paket"
elif [[ $antal -gt 9 && $antal -lt 21 ]]
then
    echo "Beställ 20 paket"
else
    echo "Du behöver inte beställa något"
fi

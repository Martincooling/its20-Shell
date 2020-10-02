#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -kat) kat="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

if [[ $kat == s || $kat == p ]]
then
    echo "20kr"
elif [[ $kat == v ]]
then
    echo "30kr"
else
    echo "felaktigt kategori"
fi


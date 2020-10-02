#!/bin/bash
while [[ "$#" > 0 ]]; do case $1 in
 -age) age="$2"; shift;shift;;
 *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done

if [[ age == " " || age == !0-9 ]]
then 
    echo Var god ange enn korrekt siffra 
else
    if [[ "$age" -lt 18 ]]
    then
            echo Du är inte myndig
    elif [[ "$age" -gt 65 ]]
    then
            echo Du är pensionär
    else
            echo Du är myndig, men inte pensionär
    fi
fi
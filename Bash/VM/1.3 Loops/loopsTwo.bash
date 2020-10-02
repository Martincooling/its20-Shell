#!/bin/bash

summa=0
while true
do
    echo "mata in ett tal"
    read userInput
    let summa=userInput+summa
    echo "Summan av alla inputs är $summa"
done


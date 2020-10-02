#!/bin/bash
#KÖR MED ./scriptname.sh

#UPPGIFT 1
#antal=0
#while true
#do
#    echo "Mata in ett tal"
#    read userInput
#    let antal=userInput+antal
#    echo "Summan är: $antal"
#done

#UPPGIFT 2
#summa=0
#while true
#do
#    echo "Skriv in ett tal"
#    read userInputOne
#    echo "SKriv in ett annat tal"
#    read userInputTwo
#    let summa=userInputOne+userInputTwo+summa
#    echo "Summan är: $summa vill du fortsätta [J/N]"
#    read userAnswer
#    if [[ $userAnswer == "J" ]]
#    then
#        continue
#    else
#        break
#    fi
#done

#UPPGIFT 3-4-5
summa=0
listNumber=()
while true
do
    echo "Skriv ett nummer :)"
    read userInput
    if [ $userInput == "0" ]
    then
        break
    else
        listNumber[$i]=userInput
        ((i++))
        let summa=userInput+summa
    fi
done
echo "Summan av alla tal är $summa"
echo Num items: ${#listNumber[@]}
let medelVarde=${#listNumber[1]}+${#listNumber[2]}+${#listNumber[3]}
echo "Medelvärdet är: $medelVarde"
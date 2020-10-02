#!/bin/bash
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
echo "Num items: ${#listNumber[@]}"
let medelVarde=summa/${#listNumber[@]}
echo "Medelvärdet är: $medelVarde"
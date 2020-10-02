#!/bin/bash
#KÖR MED ./scriptname.sh

#UPPGIFT 1
#echo "Mata in ett tal :)"
#read number
#if [[ $number -gt 10 ]] #-gt BETYDER STÖRRE ÄN
#then
#    echo "Talet är större"
#elif [[ $number -lt 10 ]]
#then
#    echo "Talet är mindre"
#else
#    echo "Talet är 10"
#fi #SLUTAR IF MED FI ???

#UPPGIFT 2
#echo "Skriv hur många paket :)"
#read milkNumber
#if [[ $milkNumber -lt 10 ]]
#then
#    echo "Beställ 30 paket"
#elif [[ $milkNumber -gt 10 && $milkNumber -lt 20 ]]
#then
#    echo "Beställ 20 paket"
#else
#    echo "Du behöver inte beställa något"
#fi

#UPPGIFT 3 Fråga om hjälp :)
#echo "Skriv in temp i tiodelar"
#read tempNumber
#if [[ $tempNumber -gt 378 && $tempNumber -lt 395 ]]
#then
#    echo "Du har feber"
#elif [[ $tempNumber -gt 395 ]]
#then
#    echo "Ring läkare asap rip lol"
#else
#    echo "Du har inte feber"
#fi

#UPPGIFT 4
#echo "Hur gammal är du?"
#read ageNumber
#if [[ $ageNumber -lt 18 ]]
#then
#    echo "Du är ej myndig"
#elif [[ $ageNumber -gt 17 && $ageNumber -lt 65 ]]
#then
#    echo "Du är myndig :)"
#else
#    echo "Du är vuxen"
#fi

#UPPGIFT 5
#echo "Ange ålderskategori: V, P, S"
#read ageGroup
#if [[ $ageGroup == "V" ]]
#then
#    echo "30kr"
#elif [[ $ageGroup == "P" || $ageGroup == "S" ]]
#then
#    echo "20kr"
#else
#    echo "fel kategori :)"
#fi

#UPPGIFT 6
userPwReal="hej123"
userNameReal="Martin"
echo "Username: "
read userName
echo "Password: "
read userPw
if [[ $userName == $userNameReal && $userPw == $userPwReal ]]
then
    echo "Korrekt inloggning gg"
else
    echo "felaktig inloggning försök igen :)"
fi
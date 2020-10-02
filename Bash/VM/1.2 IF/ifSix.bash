#!/bin/bash

realPw="hej123"
realUser="Martin"
echo "Enter Username: "
read userName
echo "Enter Password: "
read userPw

if [[ $userPw == $realPw && $userName == $realUser ]]
then
    echo "Correct login :)"
else
    echo "Incorrect login"
fi

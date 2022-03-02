#!/bin/bash

read -p "Enter a number between 1-10: " NUMBER

if [ "$NUMBER" = 5 ];then
    echo "you won"
fi

echo "Please enter your username"
read NAME

if [ "$NAME" = "Navid" ];then
    echo "Welcome to the system"
else
    echo "Not Recognized"
fi


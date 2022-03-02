#!/bin/bash

echo "Testing user input in bash script"

# User input (this is a comment)
read -p "Enter your name: " NAME

echo "Welcome $NAME"

echo "Please enter your first name and last name separated by space: "

read FNAME LNAME

echo "Your first name: $FNAME, your last name: $LNAME"

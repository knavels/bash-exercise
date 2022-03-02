#!/bin/bash

# checking directory exists
if [ -d ~/Projects ];then
    echo "It exists"
else
    echo "Sorry it doesn't exists"
fi

# Checking file exists
if [ -e ~/.bashrc ];then
    echo "bashrc exists"
else
    echo "bashrc does not exists"
fi


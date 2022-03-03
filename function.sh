#!/bin/bash

getDate(){
    date

    return 0
}

getDate

name="Navid"

demLocal() {
    local name="James"
    return
}

demLocal

echo "$name"

getSum(){
    local num3=$1
    local num4=$2
    local sum=$((num3+num4))

    echo $sum
}

getSum 23 40

#!/bin/bash

let a=5+4
echo $a

let "a = 5 + 4"
echo $a

let a++
echo $a

let "a = 4 * 5"
let $a

let "a = $1 + 30"
echo $a

# using expr
# expr just does the arithmatic and shows the result

expr 5 + 4

expr "5 + 4"

expr 5+4

expr 5 \* $1

expr 11 % 2

a=$( expr 10 - 3 )
echo $a


# $(( expression ))

a=$(( 4 + 5 ))
echo $a

a=$((3+5))
echo $a

b=$(( $a + 4 ))
echo $b

b=$(( $a + 4 ))
echo $b

(( b++ ))
echo $b

(( b +=3 ))
echo $b

a=$(( 4 * 5 ))
echo $a

# length of a variable
a='Hello World'
echo ${#a}

b=4953
echo ${#b}


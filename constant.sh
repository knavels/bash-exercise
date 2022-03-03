#!/bin/bash

declare -r NUM1=5

num2=4

num3=$((NUM1+num2))
num4=$((NUM1*num2))
num5=$((NUM1/num2))
num6=$((NUM1-num2))

echo $num3
echo $num4
echo $num5
echo $num6

rand=5
let rand+=4
echo $rand

echo "rand++ = $(( rand++ ))"
echo "rand++ = $(( ++rand ))"

cat<< END
This text
prints on
many lines
END


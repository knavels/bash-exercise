#!/bin/bash


cols=$( tput cols )
rows=$( tput lines )

message=$@

input_length=${#message}

half_input_length=$(( $input_length / 2 ))

middle_row=$(( $row / 2 ))
middle_col=$(( ($cols / 2) - $half_input_length ))

tput clear

tput cup $middle_row $middle_col
tput bold
echo $@
tput sgr0
tput cup $( tput lines ) 0

# Line 4 - tput cols will tell us how many columns the terminal has.
# Line 5 - tput lines will tell us how many lines (or rows) the terminal has.
# Line 7 - Take all the command line arguments and assign them to a single variable message.
# Line 9 - Find out how many characters are in the string message. We had to assign all the input values to the variable message first as ${#@} would tell us how many command line arguments there were instead of the number of characters combined.
# Line 11 - We need to know what 1/2 the length of the string message is in order to center it.
# Lines 13 and 14 - Calculate where to place the message for it to be centered.
# Line 16 - tput clear will clear the terminal.
# Line 18 - tput cup will place the cursor at the given row and column.
# Line 19 - tput bold will make everything printed to the screen bold.
# Line 20 - Now we have everything set up let's print our message.
# Line 21 - tput sgr0 will turn bold off (and any other changes we may have made).
# Line 22 - Place the prompt at the bottom of the screen.

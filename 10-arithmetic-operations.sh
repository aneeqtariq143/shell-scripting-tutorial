#!/bin/bash

# Preferred and best practice: Use meaningful variable names for better code readability
first_number=10
second_number=20

# Using "$(( ))" for arithmetic expansion
# Preferred and best practice: Enclose variables in double parentheses for arithmetic operations
echo $(( first_number + second_number ))
echo $(( first_number - second_number ))
echo $(( first_number * second_number ))
echo $(( first_number / second_number ))
echo $(( first_number % second_number ))
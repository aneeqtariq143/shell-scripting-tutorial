#!/bin/bash

# Preferred and best practice: Use descriptive comments to explain the purpose of the script or code section
# Base syntax of the case statement:
# case variable in
#     pattern1)
#         statements1;;
#     pattern2)
#         statements2;;
#     ...
#     *)
#         default statements;;
# esac

# Preferred and best practice: Use descriptive comments to explain the purpose of the script or code section
# Prompt the user to enter a character
echo -e "Enter some character : \c"

# Read user input into the variable 'value'
read value

# Preferred and best practice: Use descriptive case labels for better understanding
# Using a case statement to match the value of 'value'
case $value in 
    [a-z] )
        echo "User entered ${value} a to z";;  # Print message for lowercase letters
    [A-Z] )
        echo "User entered ${value} A to Z";;  # Print message for uppercase letters
    [0-9] )
        echo "User entered ${value} 0 to 9";;  # Print message for numbers
    ? )
        echo "User entered ${value} a single special character";;  # Print message for a single special character
    * )
        echo "User entered Unknown input";;  # Print message for any other input
esac
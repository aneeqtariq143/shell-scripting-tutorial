#!/bin/bash

# Preferred and best practice: Use descriptive comments to explain the purpose of the script or code section
# Basic syntax of a while loop:
# while [ condition ]
# do
#     commands
# done

# Preferred and best practice: Use meaningful variable names for better code readability
# Initialize the loop counter 'number' with value 1
number=1

# Preferred and best practice: Use a while loop for iterating until a condition is met
while [ ${number} -le 10 ]
do 
    # Preferred and best practice: Use descriptive comments for each command
    # Print the current value of 'number'
    echo "${number}"

    # Preferred and best practice: Increment 'number' within the loop to avoid infinite looping
    # Uncomment any of the following lines to increment 'number' by 1
    # number=$(( number+1 ))  # Increment 'number' using arithmetic expansion
    # (( number++ ))           # Increment 'number' using (( ))
    (( ++number ))            # Increment 'number' using (( ++ ))
done

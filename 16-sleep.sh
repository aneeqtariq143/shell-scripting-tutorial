#!/bin/bash

# Preferred and best practice: Use descriptive comments to explain the purpose of the script or code section
# This script demonstrates the usage of a while loop to iterate through a sequence of numbers.

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
    (( number++ ))           # Increment 'number' using (( ))
    sleep 1  # Preferred and best practice: Use 'sleep' to add a delay when necessary to avoid excessive CPU usage
done

# Restart loop
number=1
while [ ${number} -le 10 ]
do 
    # Preferred and best practice: Use descriptive comments for each command
    # Print the current value of 'number'
    echo "${number}"

    # Preferred and best practice: Explain potential issue with an infinite loop and provide guidance on how to handle it
    # This is example of Infinite Loop because the condition never becomes false.
    # Note: Use "sleep" while using an infinite loop; if we don't use sleep, it will slow down the system.
    # To exit from the infinite loop, press Ctrl + C.
    sleep 1
done

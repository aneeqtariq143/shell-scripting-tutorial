#!/bin/bash

# Preferred and best practice: Use descriptive comments to explain the purpose of the script or code section

# Declare an array 'os' with initial elements 'window', 'ubuntu', and 'kali'
os=('window' 'ubuntu' 'kali')

# Insert 'mac' at index 3 in the 'os' array
os[3]="mac"

# Print all elements of the 'os' array
echo "${os[@]}"

# Print the element at index 0 of the 'os' array
echo "${os[0]}"

# Print the element at index 1 of the 'os' array
echo "${os[1]}"

# Print the element at index 2 of the 'os' array
echo "${os[2]}"

# Print the element at index 3 of the 'os' array
echo "${os[3]}"

# Print the indices of all elements in the 'os' array
echo "${!os[@]}"

# Print the number of elements in the 'os' array
echo "${#os[@]}"

# Remove the element at index 2 from the 'os' array
unset os[2]

# Print the updated 'os' array after removing an element
echo "${os[@]}"

# Print the number of elements in the 'os' array after removal
echo "${#os[@]}"

# Assign a string 'kjasdkjaskdklj' to the variable 'string'
string=kjasdkjaskdklj

# Print all elements of the 'string' variable
echo "${string[@]}"

# Print the element at index 0 of the 'string' variable (which is the entire string)
echo "${string[0]}"

# Print the element at index 1 of the 'string' variable (which is empty as there's no separate character)
echo "${string[1]}"

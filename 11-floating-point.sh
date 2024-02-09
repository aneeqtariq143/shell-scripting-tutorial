#!/bin/bash

# bc (basic calculator) is a command-line calculator that supports arbitrary precision arithmetic.
# It can handle both integer and floating-point numbers, making it useful for complex mathematical operations.

# Preferred and best practice: Use meaningful variable names for better code readability
first_number=20.5
second_number=5

# Preferred and best practice: Utilize the 'bc' command for handling floating point arithmetic
# Perform addition using 'bc'
echo "$first_number + $second_number" | bc

# Perform subtraction using 'bc'
echo "$first_number - $second_number" | bc

# Alternative: Directly perform multiplication without echoing the expression
bc <<< "20.5 * 5"

# Alternative: Set precision using 'scale' and perform multiplication
echo "scale=20; $first_number * $second_number" | bc

# Alternative: Perform modulus operation
echo "20.5 % 5" | bc

number=4

# Preferred and best practice: Use 'bc' with -l option for advanced mathematical operations
# Calculate square root of 'number'
echo "scale=2; sqrt($number)" | bc -l

# Calculate 3 to the power of 3
echo "scale=2; 3^3" | bc -l
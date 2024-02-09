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

# Preferred and best practice: Utilize meaningful variable names for better code readability
vehicle=$1

# Preferred and best practice: Use descriptive case labels for better understanding
# Using a case statement to match the value of 'vehicle'
case $vehicle in 
    "car" )
        echo "It's a Car";;  # Print message for "car"
    "van" )
        echo "It's a Van";;  # Print message for "van"
    "bicycle" )
        echo "It's a Bicycle";;  # Print message for "bicycle"
    "truck" )
        echo "It's a Truck";;  # Print message for "truck"
    * )
        echo "Unknown Vehicle";;  # Print message for unknown vehicle
esac

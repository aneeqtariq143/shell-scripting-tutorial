#!/bin/bash

# Assigning the value 17 to the variable 'age'
age=17

# Preferred and best practice: Use double square brackets [[ ]] for conditional expressions, as it provides additional features and is more flexible
if [[ ${age} -gt 18 && ${age} -lt 30 ]]
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Alternative: The same condition using an arithmetic expression within double parentheses (()) is also common and readable
if ((age > 18 && age < 30))
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Alternative: The 'test' command can be used with double square brackets for improved readability
if test ${age} -gt 18 && test ${age} -lt 30
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Checking the same condition using the older syntax with -a flag
if [ ${age} -gt 18 -a ${age} -lt 30 ]
then
    echo "Valid age"
else
    echo "Age not valid"
fi
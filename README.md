# Shell Scripting Tutorial

[Learing Linux](https://linuxjourney.com/)

[Tutorial Link](https://www.youtube.com/watch?v=cQepf9fY6cE&list=PLS1QulWo1RIYmaxcEqw5JhK3b-6rgdWO_&ab_channel=ProgrammingKnowledge)

## Display List of Shell System Support

Terminal Command: `cat /etc/shells`

Command Response

````text
/bin/sh
/bin/bash
/bin/rbash
/bin/dash
````

## Find the bash located

Terminal Command: `which bash`

Command Response should be something like

````text
/bin/sh
/bin/bash
/bin/rbash
/bin/dash
````

## Creating Bash Script file

1. Create a new file `hello.sh` file.
2. File must start with `#! /bin/bash`. it is the location of bash supported in system. Below is the simple bash script file

```bash
#! /bin/bash

echo "Hello World"
```

3. Run that script by running command in terminal. `./path/of/the/script`

Example

`./hello.sh`

> Note: `.sh` is not mandatory for the file extension.

## Permission

When we create a file, then it has ***read*** and ***write*** permission. You check the file permission by running the command `ls -al`

Change the file permission to executable `sudo chmod +x ./path/of/the/script`

## Variables

There are two types of variables

### System Variables

System variables are predifined variables. mostly they are in `CAPITAL_LETTERS`

[What Are The Environment Variables?](https://www.shell-tips.com/bash/environment-variables/#gsc.tab=0)

[How to List and Set Bash Environment Variables](https://linuxsimply.com/bash-scripting-tutorial/variables/usage/set-and-list-environment-variables/)

[Linux List All Environment Variables Command](https://www.cyberciti.biz/faq/linux-list-all-environment-variables-env-command/)

Example:

```bash
#! /bin/bash

# Location of bash
echo $BASH

# Display the Bash Version
echo $BASH_VERSION

# Location of user's HOME directory
echo $HOME

# Location of current working Directory
echo $PWD

#printing the list of all environment variables
printenv
```

### User Defined Variables




> Note: User defined variables should not start with number

```bash
# Below is the location of the bash
#! /bin/bash

# User Defined Variable
name=Aneeq
echo May name is $name

value=10
echo My variable value is $value
```

## Read User Input

`read` command is used to read command from user.

### Get a single input

```bash
# Below is the location of the bash
#! /bin/bash

# Get a single input
echo "Enter name: "
read name
echo "Name ${name}"
```

### Get a multiple input

```bash
# Below is the location of the bash
#! /bin/bash

# Get a Multiple input
echo "Enter names: "
read name1 name2 name3
echo "Names : ${name1}, ${name2}, ${name3}"
```

### Get input on the same line and Silent option

```bash
# Below is the location of the bash
#! /bin/bash

# Get input on the same line
# Prompt for username
read -p "username : " username

# Prompt for password (silently):  so the entered characters are not displayed on the screen
read -sp "password : " password

# Display entered values (for demonstration purposes)
echo -e "\nEntered username: $username"
echo "Entered password: $password"
```

### Get input in array

```bash
# Below is the location of the bash
#! /bin/bash

# Get input into an array
echo "Input names"
read -a names

# Display the first two names
echo "Names are ${names[0]}, ${names[1]}"
```

### Get input in default variable

If the read doesn't have any value then it will store in default `REPLY` variable

```bash
# Below is the location of the bash
#! /bin/bash

# Get input into an Default variable
echo "Input name"
read 

# Display the Default variable
echo "Name is ${REPLY}"
```

## Passing Arguments

```bash
# Below is the location of the bash
#!/bin/bash

# Display the script name ($0) and the first three command-line arguments ($1, $2, $3),
# along with a string '> $0 $1 $2 $3'.
echo $0 $1 $2 $3 '> $0 $1 $2 $3'

# Create an array named 'args' containing all command-line arguments.

#"$@" is a special variable in Bash that represents all the command-line arguments passed to a script or function. When used within double quotes, "$@" preserves the individual arguments, taking into account word splitting and quoting.
args=("$@")

# Display the first three elements of the 'args' array, representing the command-line arguments.
echo ${args[0]} ${args[1]} ${args[2]}
```

If we run the script by `./4-passing-arguments.sh First "2nd Second" third`, then we can get below response.

```text
./4-passing-arguments.sh First 2nd Second third > $0 $1 $2 $3
First 2nd Second third
```

## If Statement ( If then , If then else, If elif else)

[Tutorial Comparison Operators](http://www.codebind.com/linux-tutorials/bash-shell-scripting-statement-fi-else-fi-elif-else-fi/)

[String Comparison Operators](https://devmanual.gentoo.org/tools-reference/bash/index.html#string-comparison-in-bash)

[String Tests Operators](https://devmanual.gentoo.org/tools-reference/bash/index.html#string-tests-in-bash)

[Integer Comparison Operators](https://devmanual.gentoo.org/tools-reference/bash/index.html#integer-comparison-in-bash)

[Boolean Algebra Operators](https://devmanual.gentoo.org/tools-reference/bash/index.html#boolean-algebra-in-bash)

### Number Comparisons Operators

```text
-eq - is equal to - if [ "$a" -eq "$b" ]

-ne - is not equal to - if [ "$a" -ne "$b" ]

-gt - is greater than - if [ "$a" -gt "$b" ]

-ge - is greater than or equal to - if [ "$a" -ge "$b" ]

-lt - is less than - if [ "$a" -lt "$b" ]

-le - is less than or equal to - if [ "$a" -le "$b" ]

< - is less than - (("$a" < "$b"))

<= - is less than or equal to - (("$a" <= "$b"))

> - is greater than - (("$a" > "$b"))

>= - is greater than or equal to - (("$a" >= "$b"))
```

### String Comparisons

```text
= - is equal to - if [ "$a" = "$b" ]

== - is equal to - if [ "$a" == "$b" ]

!= - is not equal to - if [ "$a" != "$b" ]

< - is less than, in ASCII alphabetical order - if [[ "$a" < "$b" ]]

> - is greater than, in ASCII alphabetical order - if [[ "$a" > "$b" ]]

-z - string is null, that is, has zero length
```

Example

```bash
#!/bin/bash

# Declare variables
first=10
second=5
word="abcd"

# Check if the value of 'first' is greater than 9
if [ $first -gt 9 ]
then
    echo "First Condition is true"
else
    echo "Condition not true"
fi

# Use double parentheses to evaluate the arithmetic expression for the 'second' variable
if (($second > 9))
then
    echo "Second Condition is true"
else
    echo "Second Condition not true"
fi

# Check if the value of 'word' is equal to "abc" or "abcd"
if [ $word == "abc" ]
then
    echo "1st Word matched"
elif [ $word == "abcd" ] 
then
    echo "2nd word match"
else
    echo "Word Not Matched"
fi

```

## Check File

[File Tests Operators](https://devmanual.gentoo.org/tools-reference/bash/index.html#file-tests-in-bash)

[File Comparison Operators](https://devmanual.gentoo.org/tools-reference/bash/index.html#file-comparison-in-bash)

### Check File Exist of not

```bash
#!/bin/bash

echo -e "Enter the name of File that you want to check exist or not : \c"
read file_name

if [ -e $file_name ] 
then
    echo "File Exist"
else
    echo "File not Exist"
fi
```

### Check File is regular type

```bash
#!/bin/bash

echo -e "Enter the name of File that you want to check file is regular or not : \c"
read file_name

if [ -f $file_name ] 
then
    echo "File Exist"
else
    echo "File not Exist"
fi
```

### Check if the file is empty

```bash
#!/bin/bash

echo -e "Enter the File name that you want to check if empty or not : \c"
read file_name

if [ -s $file_name ] 
then
    echo "File Not Empty"
else
    echo "File Empty"
fi
```

### Check Directory Exist of not

```bash
echo -e "Enter the name of the directory that you want to check : \c"
read directory_name

if [ -d $directory_name ] 
then
    echo "Directory Exist"
else
    echo "Directory not Exist"
fi
```

```bash
#!/bin/bash

# Prompt the user to enter the name of the file
echo "Enter the name of the file : \c"

# Read the input from the user and store it in the variable 'file_name'
read file_name

# Check if the file exists
if [ -f ${file_name} ]
then
    # Check if the file is writable
    if [ -w ${file_name} ]
    then
        # Prompt the user to type some text data and append it to the file
        echo "Type some text data. To quit, press ctrl+d."
        cat >> ${file_name}
    else
        # Notify the user that the file does not have write permissions
        echo "The file does not have write permissions."
    fi
else
    # Notify the user that the specified file does not exist
    echo "${file_name} does not exist."
fi
```

### AND Operator

```bash
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
```

### OR Operator

```bash
#!/bin/bash

# Assigning the value 17 to the variable 'age'
age=17

# Preferred and best practice: Use double square brackets [[ ]] for conditional expressions, as it provides additional features and is more flexible
if [[ ${age} -gt 18 || ${age} -lt 30 ]]
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Alternative: The same condition using an arithmetic expression within double parentheses (()) is also common and readable
if ((age > 18 || age < 30))
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Alternative: The 'test' command can be used with double square brackets for improved readability
if test ${age} -gt 18 || test ${age} -lt 30
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Checking the same condition using the older syntax with -a flag
if [ ${age} -gt 18 -o ${age} -lt 30 ]
then
    echo "Valid age"
else
    echo "Age not valid"
fi
```

### OR Operator

```bash
#!/bin/bash

# Assigning the value 17 to the variable 'age'
age=17

# Preferred and best practice: Use double square brackets [[ ]] for conditional expressions, as it provides additional features and is more flexible
if [[ ${age} -gt 18 || ${age} -lt 30 ]]
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Alternative: The same condition using an arithmetic expression within double parentheses (()) is also common and readable
if ((age > 18 || age < 30))
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Alternative: The 'test' command can be used with double square brackets for improved readability
if test ${age} -gt 18 || test ${age} -lt 30
then
    echo "Valid age"
else
    echo "Age not valid"
fi

# Checking the same condition using the older syntax with -a flag
if [ ${age} -gt 18 -o ${age} -lt 30 ]
then
    echo "Valid age"
else
    echo "Age not valid"
fi
```

## Performing Arithmetic Operations

```bash
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
```

## Floating Point math operations

```bash
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
```

## Case Statement

```bash
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
```

## Regular Expression in Case Statement

```bash
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
```

## Array Variable

```bash
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
```
# Below is the location of the bash
#! /bin/bash

# # Get a single input
# echo "Enter name: "
# read name
# echo "Name ${name}"


# # Get a Multiple input
# echo "Enter names: "
# read name1 name2 name3
# echo "Names : ${name1}, ${name2}, ${name3}"

# # Get input on the same line
# # Prompt for username
# read -p "username : " username

# # Prompt for password (silently):  so the entered characters are not displayed on the screen
# read -sp "password : " password

# # Display entered values (for demonstration purposes)
# echo -e "\nEntered username: $username"
# echo "Entered password: $password"


# # Get input into an array
# echo "Input names"
# read -a names

# # Display the first two names
# echo "Names are ${names[0]}, ${names[1]}"

# Get input into an Default variable
echo "Input name"
read 

# Display the Default variable
echo "Name is ${REPLY}"
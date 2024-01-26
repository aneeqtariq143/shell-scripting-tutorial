# Shell Scripting Tutorial

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
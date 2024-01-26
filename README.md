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

### User Defined Variables

User defined variables should not start with number
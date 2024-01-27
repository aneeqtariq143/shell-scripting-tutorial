# Below is the location of the bash
#!/bin/bash

# Display the script name ($0) and the first three command-line arguments ($1, $2, $3),
# along with a string '> $0 $1 $2 $3'.
echo $0 $1 $2 $3 '> $0 $1 $2 $3'

# Create an array named 'args' containing all command-line arguments.
args=("$@")

# Display the first three elements of the 'args' array, representing the command-line arguments.
echo ${args[0]} ${args[1]} ${args[2]}
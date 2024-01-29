#!/bin/bash

# echo -e "Enter the name of File that you want to check exist or not : \c"
# read file_name

# if [ -e $file_name ] 
# then
#     echo "File Exist"
# else
#     echo "File not Exist"
# fi


# echo -e "Enter the name of File that you want to check file is regular or not : \c"
# read file_name

# if [ -f $file_name ] 
# then
#     echo "File Exist"
# else
#     echo "File not Exist"
# fi

# echo -e "Enter the name of the directory that you want to check : \c"
# read directory_name

# if [ -d $directory_name ] 
# then
#     echo "Directory Exist"
# else
#     echo "Directory not Exist"
# fi


echo -e "Enter the File name that you want to check if empty or not : \c"
read file_name

if [ -s $file_name ] 
then
    echo "File Not Empty"
else
    echo "File Empty"
fi
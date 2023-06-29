#! /bin/bash

FILE=""
read -p "Enter file or folder to read:" FILE

if [ -f "$FILE" ]
then
  echo "Regular file"
elif [ -d "$FILE" ]
then
  echo "Directory"
else
  echo "Other types of file"
fi

ls -l $FILE
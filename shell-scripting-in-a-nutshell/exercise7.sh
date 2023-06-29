#! /bin/bash

FILE=$1

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
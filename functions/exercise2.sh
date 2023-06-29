#! /bin/bash

file_count() {
  if [ -d "$1" ]
  then
    local count=$(ls $1 | wc -w)
    local RESULT=$(ls $1)
    echo "$1:"
    echo $count
  else
    echo "Input is not a directory"
  fi
}

file_count /etc
file_count /var
file_count /usr/bin
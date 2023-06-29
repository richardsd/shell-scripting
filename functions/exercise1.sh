#! /bin/bash

file_count() {
  local count=$(ls $1 | wc -w)
  local RESULT=$(ls $1)
  echo "Number of files in directory is:$count"
}

file_count $1
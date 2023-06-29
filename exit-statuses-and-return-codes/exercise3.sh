#! /bin/bash

cat /etc/shadow

if [ "$?" ]
then
  echo "Command failed"
  exit 1
else
  echo "Command succeeded"
  exit 0
fi

# if [ "$?" -eq "0" ]
# then
#   echo "Command succeeded"
#   exit 0
# else
#   echo "Command failed"
#   exit 1
# fi

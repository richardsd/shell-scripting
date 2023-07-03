#! /bin/bash

NUMBER=$RANDOM

MESSAGE="Random number is: ${RANDOM}"
echo $MESSAGE

logger -p user.info "$MESSAGE" -f ./my-log.log

#! /bin/bash

logit() {
  NUMBER=$RANDOM

  MESSAGE="Random number is: ${RANDOM}"
  echo $MESSAGE

  logger -p user.info "$MESSAGE" -f ./my-log.log -it "randomly-$$"
}

logit
logit
logit

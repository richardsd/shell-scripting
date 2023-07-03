#! /bin/bash

# FILES=$(ls *.jpg)

# for FILE in $FILES
# do
#   NEW_FILE=$(date "+%Y%m%d"$FILE)
#   echo "Moving ${FILE} to ${NEW_FILE}"
#   mv $FILE $NEW_FILE
# done

shopt -s nullglob # enable 
for FILE in *.jpg
do
  NEW_FILE=$(date "+%Y%m%d"-$FILE)
  echo "Moving ${FILE} to ${NEW_FILE}"
  mv $FILE $NEW_FILE
done
shopt -u nullglob # disable

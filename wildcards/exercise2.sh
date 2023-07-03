#! /bin/bash

CURRENT_DATE=$(date "+%Y%m%d")

read -p "Please enter a file extension: " EXTENSION

if [ "${EXTENSION}" = "" ]
then
  echo "Error: Please enter a valid file extension"
  exit 1
fi

read -p "Please enter a file prefix (press ENTER FOR ${CURRENT_DATE}): " PREFIX

if [ "${PREFIX}" = "" ]
then
  PREFIX=$CURRENT_DATE
fi

shopt -s nullglob # enable 
for FILE in *.$EXTENSION
do
  NEW_FILE=$PREFIX-$FILE
  echo "Moving ${FILE} to ${NEW_FILE}"
  mv $FILE $NEW_FILE
done
shopt -u nullglob # disable

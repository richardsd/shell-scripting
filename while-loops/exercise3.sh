#! /bin/bash

print_options() {
  echo "What yould you like to do? (Enter q to quit.)"
  echo "1. Show disk usage"
  echo "2. Show system uptime"
  echo "3. Show the users logged into the system"
}

print_options

while read OPTION
do
  case "$OPTION" in
    1)
      df
    ;;
    2)
      uptime
    ;;
    3)
      who
    ;;
    q)
      echo "Goodbye!"
      exit 0
    ;;
    *)
      echo "Invalid option. Only 1, 2, 3 or q are allowed."
  esac
  print_options
done
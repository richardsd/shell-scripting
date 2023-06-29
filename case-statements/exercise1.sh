#! /bin/bash

echo "$1"
case "$1" in
  start)
    echo "Start"
  ;;
  stop)
    echo "Stop"
  ;;
  *)
    echo "Usabe sleepwaling start/stop"
esac
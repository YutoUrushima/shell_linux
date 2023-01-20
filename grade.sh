#!/bin/bash
if [ ! "$#" -eq 2 ]; then
  echo "input <student> <grade>"
  exit 2
fi
case "${2^^}" in
  [A-C]) echo "$1 is great student"
  ;;
  [D]) echo "$1 should do more hard"
  ;;
  [E-F]) echo "$1 must do hard next year"
  ;;
  *) echo "$1 $2 is cannot be evaluated their grade"
  ;;
esac
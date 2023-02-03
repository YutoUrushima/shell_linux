#!/bin/bash
# check_file() {
#   if [ -f "$1" ] ; then
#     return 0
#   elif [ -d "$1" ] ; then
#     return 1
#   else
#     return 2
#   fi
# }

# if [ -z "$1" ] ; then
#   echo "Usage: $0 file"
#   exit 1
# fi

# check_file "$1"
# status=$?
# if [ $status = 0 ] ; then
#   echo "$1 is a regular file"
# elif [ $status = 1 ] ; then
#   echo "$1 is a directory"
# else
#   echo "$1 is a device file"
# fi

to_lower()
{
  input="$1"
  output=$( echo $input | tr [A-Z] [a-Z])
  echo $output
}

while true
do
  read -p "Enter c to continue or q to exit: "
  REPLY=$(to_lower "$REPLY")
  if [ $REPLY = "q" ] ; then
    break
  fi
done
echo "Finished"
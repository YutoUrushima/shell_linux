#!/bin/bash
mydir=/home/mydir
name="mokhtar"
if [ -d "$mydir" ] || [ -n "$name" ]; then
  echo "exists!"
else
  echo "fail"
fi
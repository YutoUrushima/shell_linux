#!/bin/bash
myfunc() {
  arr=$1
  echo "The array from inside the function: ${arr[*]}"
}

test_arr=(5 10 15)
echo "The original array is: ${test_arr[*]}"
myfunc ${test_arr[*]}
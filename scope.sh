#!/bin/bash
myvar=10
myfunc() {
  local myvar=50
}
myfunc
echo $myvar
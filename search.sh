#!/bin/bash
usage="使用法: search.sh <ファイル> <検索文字列> <操作>"

if [ ! "$#" -eq 3 ]; then
  echo "$usage"
  exit 2
fi

[ ! -f "$1" ] && exit 3

case "$3" in
  [cC])
    mesg="count lines which match $2 in $1"
    opt="-c"
    ;;
  [pP])
    mesg="display lines which match $2 in $1"
    opt=""
    ;;
  [dD])
    mesg="display excluding lines which match $2 in $1"
    opt="-v"
    ;;
  *)
    echo "cannot evaluate $1 $2 $3"
    exit 1
    ;;
esac
echo $mesg
grep $opt $2 $1
exit 0
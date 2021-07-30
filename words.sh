j!/bin/bash

if [ $# -ne 2 ]
  then
    echo "Usage:"
    echo "bash $0 <relative directory> <filename pattern>"
    echo "$0 "./../path_to_a_project" \"*.go\" > output-go.txt"
    exit 1
  fi

DIR_PATH=$1
NAME=$2

find $DIR_PATH -name "$NAME" | grep -v "#" | xargs cat | sed 's/[^a-zA-Z_-]/\n/g' | sort | uniq -c | sort -n

echo "Total count:"
find $DIR_PATH -name "$NAME" | grep -v "#" | xargs cat | sed 's/[^a-zA-Z_-]/\n/g' | wc -l



if [ $# -eq 0 ]
  then
    echo "Usage:"
    echo "go to your source directory"
    echo "$@ \"*.go\" > output-go.txt"
  fi

find -name $1 | grep -v "#" | xargs cat | sed 's/[^a-zA-Z_-]/\n/g' | sort | uniq -c | sort -n

#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ];
then
    echo "Error: You must provide exactly 2 arguments."
    exit 1
fi

dir=$(dirname -- "$writefile")
file_name=$(basename -- "$writefile")

mkdir -p -- "$dir"

if ! touch -- "$dir/$file_name";
then
    exit 1
fi

echo "$writestr" > $writefile
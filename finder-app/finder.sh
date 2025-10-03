#!/bin/bash

filedirs="$1"
searchstr="$2"

if [ $# -ne 2 ];
then
    echo "Error: You must provide exactly 2 arguments."
    exit 1
fi

if [[ ! -d $filedirs ]];
then
    echo "Please enter a valid directory."
    exit 1
fi

total_matches=$(grep -RIFho -- $searchstr $filedirs | wc -l)
files_with_matches=$(grep -RIlF -- $searchstr $filedirs | wc -l)

echo "The number of files are $files_with_matches and the number of matching lines are $total_matches"

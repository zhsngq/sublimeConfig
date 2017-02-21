#!/bin/bash
source t.sh

message=$(git status)
res=$(expr index '${message}' 'Changes')
if test ${res}=='0' 
    then 
        gitCommit
    else 
        echo 'no change'
fi

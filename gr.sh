#!/bin/bash
source t.sh

message=$(git status)
res=$(expr index '${message}' 'nothing to commit')
if test ${res}=='0' 
    then 
        gitCommit
    else 
        echo 'no change'
fi

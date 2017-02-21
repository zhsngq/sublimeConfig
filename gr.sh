#!/bin/bash
source t.sh

message=$(git status)
echo $message
res=$(expr index '${message}' 'Changes')
echo $res
if test ${res}=='0' 
    then 
        gitCommit
    else 
        echo 'no change'
fi

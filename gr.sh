#!/bin/bash
source t.sh

message=$(git status)
echo $message
res=$(equals 'Changes' "${message}")
echo $res
if test "${res}"=="Y"
    then 
        gitCommit
    else 
        echo 'no change'
fi

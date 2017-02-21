#!/bin/bash
source t.sh

message=$(git status)
echo $message
res=$(equals 'Changes' "${message}")
echo $res
if [ "${res}" == "Y" ] 
    then 
        gitCommit
    else 
        echo 'no change'
fi

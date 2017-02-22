#!/bin/bash
source t.sh

message=$(git status)
echo $message
res=$(equals 'Changes' "${message}")
echo $res
if [ "${res}" == "Y" ] 
    then 
        echo 'set message ..'
        read commitMessage
        res=$(gitCommit $commitMessage)
        echo $res
    else 
        echo 'no change'
fi

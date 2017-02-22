#!/bin/bash
source t.sh

message=`git status`
res=`equals 'Changes' "${message}"`
unset message
if [ "${res}" == "Y" ] 
    then 
        echo 'set message ..'
        read message
        res=`gitCommit $message`
        echo $res
    else 
        echo 'no change'
fi

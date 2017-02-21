#!/bin/bash
source t.sh

message=$(git status)
echo ${message}
res=`equals "nothing to commit" "${message}"`
if test $res=='N' 
    then 
        gitCommit
    else 
        echo 'no change'
fi

#!/bin/bash
source t.sh

message=`git status`
res=`equals "nothing to commit" $message`
if test $res=='N' 
    then 
        res=`gitCommit`
        echo $res
fi

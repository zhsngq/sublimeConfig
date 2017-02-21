#!/bin/bash
echo 'update...' 
message=(`git pull`)
if [ "$message[0]"x = "Updating"x ]; then 
    echo 'ct'
else
# 冲突
fi

#!/bin/bash
function gitCommit() {
    git add . &&
    read message &&
    git commit -m '$message' &&
    git pull
}
echo 'update...' 
message=(`git pull`)
if [ "$message[0]"x = "Updating"x ]; then 
    gitCommit
else
# 冲突
    git stash && 
    git pull &&
    git stash pop
fi

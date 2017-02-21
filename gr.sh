#!/bin/bash
function gitCommit() {
    git add . &&
    read message &&
    git commit -m '$message' &&
    git pull
}
echo 'update...' 
message=(`git pull`)
echo "-----------> ${message}"
if [ "$message[0]"x = "Updating"x ]; then 
    git stash && 
    git pull &&
    git stash pop
else
    gitCommit
fi

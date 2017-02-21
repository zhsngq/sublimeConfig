#!/bin/bash
function gitCommit() {
    git add . &&
    echo 'set message ..'
    read message &&
    git commit -m '$message' &&
    git push
}
echo 'update...' 
message=(`git pull`)
if [ "$message[0]"x = "Updating"x ]; then 
    git stash && 
    git pull &&
    git stash pop
else
    gitCommit
fi

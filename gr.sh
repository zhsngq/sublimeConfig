#!/bin/bash
function gitCommit() {
    git add . &&
    echo 'set message ..'
    read message &&
    git commit -m '$message' &&
    git push && 
    echo '[OK] sublimt git'
}
echo 'update...' 
message=(`git pull`)
if [ "$message[0]"x = "Updating"x ]; then 
    echo 'stash'
    git stash && 
    echo 'pull'
    git pull &&
    echo 'gitCommit'
    gitCommit  
    git stash pop 
else 
    gitCommit
fi


#!/bin/bash
function gitCommit() {
    echo 'set message ..'
    read commitMessage &&
    git add . &&
    git commit -m $commitMessage &&
    git push && 
    echo '[OK] sublimt git'
}
echo 'update...' 
message=(`git pull`)
if [[ ${message[0]}=="Already"]] 
then 
    echo 'no update'
    # gitCommit
else 
    echo 'update'
    # git stash &&
    # git pull &&
    # git stash pop
    # gitCommit
fi

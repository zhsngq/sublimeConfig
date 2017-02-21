#!/bin/bash
function gitCommit() {
    git add . &&
    echo 'set message ..'
    read commitMessage &&
    git commit -m '$commitMessage' &&
    git push && 
    echo '[OK] sublimt git'
}
echo 'update...' 
message=(`git pull`)
if [ "$message[0]"x = "Updating"x ]; then 
    git stash && 
    git pull &&
    git stash pop 
fi
gitCommit


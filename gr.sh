#!/bin/bash
function gitCommit() {
    git add . &&
    echo 'set message ..'
    read commitMessage
    git commit -m '$commitMessage' &&
    git push && 
    echo '[OK] sublimt git'
}
echo 'update...' 
message=(`git pull`)
if test $message[0] -eq "Already"
then 
    git stash && 
    git pull 
    git stash pop 
    gitCommit
else 
    gitCommit
fi

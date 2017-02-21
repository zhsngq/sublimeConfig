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
a="Already"
b=$message[0]
if test a=b
then 
    gitCommit
else 
    git stash && 
    git pull 
    git stash pop 
    gitCommit
fi

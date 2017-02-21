#!/bin/bash
function equals (){
    if [[ ${2/${1}//} == $2 ]]
    then
        echo 'N'
    else
        echo 'Y'
    fi
}

function gitCommit() {
    echo 'set message ..'
    read commitMessage
    git add . &&
    git commit -m $commitMessage &&
    message=`git push` &&
    echo '[OK] sublimt git' 
    echo $message
}

function gitConflict(){
    git stash &&
    git pull &&
    git stash pop
    echo '[ERROR] git Conflict'
}

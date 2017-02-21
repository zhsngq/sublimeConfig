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
    git add . &&
    git commit -m $commitMessage &&
    message=$(git push)
    res=$(equals 'rejected' "${message}") 
    if [ "${res}" == "Y" ] 
    then 
        gitConflict
    else 
        echo '[OK] sublimt git' 
    fi
}

function gitConflict(){
    echo '-------------> pop'
    git stash &&
    git pull &&
    git stash pop && 
    echo '[ERROR] git Conflict'
    git status
}

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
    echo '-------------->'
    echo $message
    res=$(equals 'rejected' "${message}") 
    echo $res
    if [ "${res}" == "Y" ] 
    then 
        echo $(gitConflict)
    else 
        echo '[OK] sublimt git' 
    fi
}

function gitConflict(){
    git stash &&
    git pull &&
    git stash pop &&
    git status
    echo '[ERROR] git Conflict'
}

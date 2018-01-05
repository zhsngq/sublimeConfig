#!/bin/bash
echo "==========set message=========="
read message
git add . &&
if [[ $message"x" == "x" ]];then
    git commit -m "常规提交"
    else
    git commit -m "$message"
fi
git push && echo "============OK============="
read message

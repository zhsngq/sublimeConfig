#!/bin/bash
source t.sh

message=`git pull`
echo "---> $message"

# message=`git status`
# res=`equals "nothing to commit" $message`
# if test $res=='N' 
#     then 
#         gitCommit
# fi

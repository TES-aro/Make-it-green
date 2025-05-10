#!/bin/bash
eval "$(ssh-agent)"
ssh-add $HOME/.ssh/uni_gitlab
#SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
#cd $SCRIPT_DIR
date=$(date +%d/%M/%y)
epoch_time=$(date +%s)
message=$(date +%A)
# customize this for what ever you wish to upload
echo "$date epoch: $epoch_time" >> fluff.txt
fortune | cowsay >> fluff.txt
echo "" >> fluff.txt
# pushes the update
git add .
git commit -m "$epoch_time"
git push

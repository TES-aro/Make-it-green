#!/bin/bash
date=$(date +%d/%M/%y)
epoch_time=$(date +%s)
message=$(date +%A)
echo "$date epoch: $epoch_time" >> fluff.txt
fortune | cowsay >> fluff.txt
echo "" >> fluff.txt
git commit -m "$message"
git push

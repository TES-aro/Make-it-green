#!/bin/bash
# check if has updated today
DATE="$(date +%e)"
FILE_DATE="$(date +%e -r fluff.txt)"
if [ $DATE != $FILE_DATE ]; then
	MESSAGE_DATE=$(date +%d/%M/%y)
	EPOCH_TIME=$(date +%s)
# commit message
	MESSAGE=$(date +%A)
# customize this for what ever you wish to upload
	echo "$MESSAGE_DATE epoch: $EPOCH_TIME" >> fluff.txt
	fortune | cowsay >> fluff.txt
	echo "" >> fluff.txt
	git add .
	sleep 1s
	git commit -m "$MESSAGE"
fi
# pushes the update
sleep 1s
git push

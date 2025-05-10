#!/bin/bash
# check if has updated today
X="$(date +%e)"
Y="$(date +%e -r fluff.txt)"
if [ $X == $Y ]; then

	date=$(date +%d/%M/%y)
	epoch_time=$(date +%s)
	message=$(date +%A)
	# customize this for what ever you wish to upload
	echo "$date epoch: $epoch_time" >> fluff.txt
	fortune | cowsay >> fluff.txt
	echo "" >> fluff.txt
	# pushes the update
	git add .
	git commit -m "I like unicorns"
	git push
fi

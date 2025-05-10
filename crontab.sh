#!/bin/bash
dir=$(pwd)
crontab -l > mycron
#edit the "13 12 * * * for your prefered timing"
echo "13 12 * * * .$dir/fluff-update.sh" >> mycron
crontab mycron
rm mycron
touch fluff.txt
## config for your own git
git add .

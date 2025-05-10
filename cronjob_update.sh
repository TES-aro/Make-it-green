#!/bin/bash
# edit this for the time when you wish to run the cronjob.
# check man 5 crontab for specifics!
TIMER="13~37 4-20 * * *"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
crontab -l > mycron
# this deletes previous cronobs that execute fluff-update.sh
sed -i '/fluff-update.sh/d' mycron
echo "$TIMER  cd $SCRIPT_DIR && ./fluff-update.sh" >> mycron
crontab mycron
rm mycron

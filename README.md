## I thought this would've been funnier.
simple cronjob that updates github or other site regularly.
I am far too unproductive to have a pretty tracker without cheating :3  

## instalation


```bash
# download the project
git pull git@github.com:TES-aro/Make-it-green.git

# initialize your new repository. This is done manually for now.

# run cronjob_update.sh
./cronjob_update.sh
```

you can edit the cronjob either manually trough `crontab -e`
or by editing the cronjob_update.sh file and running it again.
the file removes all cronjobs that deal with `fluff-update.sh`
